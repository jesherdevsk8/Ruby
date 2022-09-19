# Mssões Especiais - Resolução



A seguir veja como resolver a missão especial da aula passada:



1- Abra o projeto blog através do seu editor de texto preferido



2- Adicione o relacionamento **has_many_attached** dentro do arquivo `app/models/author.rb`

```
  has_many_attached :photos
```



3- Permita que as fotos sejam enviadas através do strong params que está no controller `app/controllers/authors_controller.rb`

```
    def author_params
      params.require(:author).permit(:first_name, :last_name, :description, :avatar, photos: [])
    end
```



4- Adicione o envio do novo campo dentro de `app/views/authors/_form.html.erb`

```
  <div class="field">
    <%= form.label :photos %>
    <%= form.file_field :photos, multiple: true %>
  </div>
```



5- Por fim, adicione o código para exibir as fotos dentro do arquivo `app/views/authors/show.html.erb`

```
<% if @author.photos.attached? %>
  <% @author.photos.each do |photo| %>
    <%= image_tag(photo, height: '200') %>
  <% end %>
  </br></br>
<% end %>
```

