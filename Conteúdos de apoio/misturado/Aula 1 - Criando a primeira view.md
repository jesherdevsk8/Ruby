# Criando a primeira view

Lembre-se que no final do módulo passado, durante as missões especiais, você criou um model chamado Post para salvar informações de um post no banco de dados.

Como você já viu anteriormente o Rails utiliza o padrão MVC por convenção e por isso o próximo passo neste momento é criar o controller e as views para o Post.



## Passo a Passo

1- Utilize um generator para criar o controller Posts

```
rails g controller Posts
```



2- Defina uma action chamada **index** dentro do controller criado no passo anterior

```
def index
  @posts = Post.all
end
```



3- É preciso mapear a rota para a action **index** dentro do arquivo `config/routes.rb`

```
get '/posts', to: 'posts#index'
```



4- Com toda essa estrutura criada, agora o passo final é criar a view que será renderizada pelo seu controller. 

Dentro da pasta `app/views/posts`, crie um arquivo chamado `index.html.erb`



5- Adicione o seguinte conteúdo dentro desse arquivo

```
<h1>Posts</h1>

<% if @posts %>
  <% @posts.each do |post| %>
    <%= post.title %>
  <% end %>
<% else %>
  <p>Nenhum post cadastrado</p>
<% end %>
```



6- Perceba que é possível executar código rails dentro de uma view através da utilização de tags especiais. 

Veja a seguir o significado dessas tags:

- ```
  <%= Código %>
  ```

   — Insere o resultado da expressão em sua página html.

  ​

- ```
  <% Código %>
  ```

   — Executa a instrução, porém, não retorna nenhum valor para a sua página html.

  ​

- ```
  <%# COMMENT %>
  ```

   — Comenta a declaração da tag.

7- As validações allow_nil adicionadas no model Post durante as missões do último módulo só fazem sentido quando utilizadas em conjunto com outras validações. Por isso remova elas para seguir esta aula.

8- Crie um novo post através do **rails console** e depois atualize a página index de posts para visualizar a mudança.

9- Parabéns, você acaba de criar sua primeira página dinâmica com Ruby on Rails!!!