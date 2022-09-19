# Criação de um formulário

Um formulário html possibilita o contato do usuário com a sua aplicação, provendo para ele uma forma de interação por meio do envio de dados para criação de um novo registro, para alteração de um registro existente, para realizar uma busca, etc. O problema é que escrever e manter um formulário pode se tornar um processo tedioso por causa do controle de atributos presentes nele e para facilitar sua vida como programador o Rails conta com o Form Helpers.

Através desses Helpers predefinidos presentes por padrão em sua aplicação é muito fácil criar e gerenciar um formulário e nessa aula eu vou te mostrar como utilizá-los.



## Criando seu primeiro formulário

1- Para criar o seu primeiro formulário com o Form Helper abra o projeto blog no seu editor de texto preferido

2- Depois substitua o conteúdo da partial **_form.html.erb** presente em `app/views/posts`

```
<%= form_with do |form| %>
  Form contents
<% end %>
```

O form with é um helper que ajuda na definição de um formulário

3- Levante sua aplicação

4- Acesse este link para visualizar o resultado do código que você adicionou

```
htpp://localhost:3000/posts/new
```

5- Faça uma inspeção da página pra ver o código html gerado

6- Também é possível utilizar helpers para criação de elementos dentro do formulário.

Utilize o trecho de código a seguir para criar o seu primeiro input

```
<%= form.label :query, "Search for:" %>
<%= form.text_field :query %>
<%= form.submit "Search" %>
```

Obs: Adicione o código dentro do formulário

7- Atualize a página e veja o input que foi gerado

8- Também é possível configurar a url e método que o formulário deve utilizar durante a sua definição

```
<%= form_with url: "/search", method: :get do |form| %>
```

9- Atualizando a página você não percebe nenhuma mudança, porém, ao inspecioná-la é possível ver que as duas configurações foram aplicadas ao formulário



## Criando um formulário para um objeto do Active Record

Em uma aula passada, você enviou uma variável local para a partial **_form.html.erb** que representa o objeto de um Post no Active Record e quando você utiliza esse objeto na definição de um formulário o Ruby on Rails vai saber quando o formulário deve ser para criar ou alterar um registro.



1- Substitua o código da partial **_form** para criar o formulário que cria/altera um post

```
<%= form_with(model: post) do |post_form| %>
  <%= post_form.label :title %>
  <%= post_form.text_field :title %>

  <%= post_form.label :content %>
  <%= post_form.text_area :content, size: "60x10" %>

  <%= post_form.label :publish_at %>
  <%= post_form.datetime_local_field :publish_at %>

  <%= post_form.label :author_id, 'Author' %>
  <%= post_form.select :author_id, 
      Author.all.map { |a| [a.first_name.to_s + ' ' + a.last_name.to_s, a.id] } %>
  </br></br>
  <%= post_form.submit %>
<% end %>
```

2- Em meio ao número de novas informações você pode imaginar que é muito complicado saber de tudo isso, mas na verdade você não precisa ter esse conhecimento de cor. Sempre utilize a documentação para encontrar uma descrição de como você deve inserir algum elemento que deseja

```
https://guides.rubyonrails.org/form_helpers.html
```



