# Layout da aplicação

No Ruby on Rails, um layout é o conjunto de peças que se encaixam para formar uma view completa, como por exemplo, um cabeçalho; um rodapé; um menu e etc... Eles são feitos com intuito de compartilhar códigos que são comuns em mais de uma view, evitando assim a repetição de código.

Quando você cria uma nova aplicação Ruby on Rails é gerado um layout padrão que será utilizado na falta da definição explícita de algum outro dentro do seu controller.



## Conhecendo um layout

1- Veja o layout padrão gerado pelo Ruby on Rails abrindo o arquivo app/views/layouts/application.html.erb

2- O código `<%= yield %> ` define onde deve ser renderizado o conteúdo de uma action dentro do layout.

Por isso você não precisa definir as tags html, head e body dentro da view de alguma action. O layout padrão da aplicação já adiciona essa estrutura para você.



## Criando um layout

Por causa da real possibilidade  da necessidade de mais de um layout dentro da mesma aplicação o rails permite que você utilize quantos layouts quiser. Um exemplo básico disso é um site que possui um layout para usuários não autenticados e um layout para os autenticados. 

Você deve criar todos os seus layouts dentro da past `app/views/layouts`

1- Crie um novo layout chamado `post.html.erb`



2- Adicioneo seguinte conteúdo dentro dele

```
<!DOCTYPE html>
<html>
  <head>
    <title>Blog - Posts </title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>

    <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>
    <h1>Dominando o Ruby on Rails</h1>
    </br>
    <%= yield %>
  </body>
</html>
```



3- Para utilizar o layout criado nos passos anteriores utilize o método `layout` após a definição da classe Posts em `app/controllers/posts_controller.rb`

```
layout 'post'
```

Obs: Agora todas as views de Posts compartilharão a mesma estrutura presente dentro desse layout.



4- Levante o servidor, abra a página index de Posts e veja como ela está sendo renderizada



5- Também é possível fazer a definição de layout para uma action em específico através da renderização da resposta.

```
def index
  @posts = Post.all
  render layout: "application"
end
```



6- Atualize a página index de Posts novamente para ver o resultado da configuração anterior.