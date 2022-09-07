# Associando AS com o Model

Agora que você já tem o Active Storage configurado está na hora de aprender como utilizá-lo para enviar arquivos dentro da sua aplicação.

A primeira coisa que você deve saber é que basta apenas a adição de uma associação para que seja possível guardar as imagens de um Model.



1- Abra o projeto **blog** através do seu editor de texto favorito.



2- Navegue até o arquivo `app/models/author.rb`. 



3- Dentro da classe **Author** utilize o método **has_one_attached** para informar que o Autor possui uma foto de perfil

```
has_one_attached :avatar
```

Para adicionar mais de uma imagem  use o méotod **has_many_attached**.



4- Abra o arquivo `app/controllers/authors_controller.rb` e permita que o parâmetro **avatar** seja enviado através do strong params.

```
    def author_params
      params.require(:author).permit(:first_name, :last_name, :description, :avatar)
    end
```



5- Navegue até o arquivo `app/views/authors/_form.html.erb` e adicione um novo input para o envio da imagem

```
  <div class="field">
    <%= form.label :avatar %>
    <%= form.file_field :avatar %>
  </div>
```



7- Faça a apresentação da imagem dentro do arquivo `app/views/authors/show.html.erb`

```
<% if @author.avatar.attached? %>
  <p>
    <%= image_tag(@author.avatar, height: '200') %>
  </p>
<% end %>
```



8- Por fim, levante sua aplicação e faça o teste de upload da imagem.

```
rails s
```

