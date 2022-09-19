# Removendo a complexidade das views com Helpers

O Ruby on Rails conta com algo chamado Helpers para remover das páginas html as lógicas complexas do seu código e por fim tornar seu projeto mais organizado. Além disso, um helper também pode ser reutilizado em mais de uma página, evitando a repetição de código.

Por padrão, o rails já inicia um projeto com alguns helpers predefinidos, mas também existe a possibilidade de você criar seus próprios helpers.



## Helpers predefinidos

1- Abra o projeto **blog**, navegue até a página **index** de **Posts** e substitua seu conteúdo pelo código a seguir para  apresentar os dados por meio de uma tabela

```
<h1>Posts</h1>

<% if @posts %>
  <table>
    <thead>
      <tr>
        <th>Title</th>
        <th>Created</th>
      </tr>
    </thead>
    <tbody>
      <% @posts.each do |post| %>
        <tr>
          <td><%= post.title %></td>
          <td><%= post.created_at</td>
        </tr>
      <% end %>
    </tbody>
  </table>
<% else %>
  <p> No results found </p>
<% end %>
```



2- Utilize o helper **time_ago_in_words** para formatar a data em que o post foi criado

```
          <td><%= time_ago_in_words(post.created_at) %> ago</td>
```



4- Também é possível utilizar os helpers dentro do **Rails Console** com a variável **helper**

```
helper.number_to_human(100000)
```



5- Existe uma grande lista de Helpers predefinidos e para conhecer mais sobre eles utilize este link:

https://api.rubyonrails.org/v6.1.3.1/classes/ActionView/Helpers.html



## Escrevendo seus próprios helpers

Perceba que na aplicação **blog** existe uma pasta localizada dentro de **app** chamada **helpers**. Ela é destinada para a escrita dos seus próprios helpers. 

Cada arquivo presente dentro desta pasta símboliza onde os helpers poderão ser acessados, sendo que, quando o nome do arquivo é **application_helper.rb** trata-se de algo padrão que foi iniciado junto à sua aplicação equanto arquivos com o nome de um controller são criados por um genenator de um Controller. 

Essas duas divisões ajudam a saber onde criar um helper, pois todos os heleprs definidos dentro do arquivo **application_helper.rb**  estarão disponíveis para todas as views da sua aplicação, enquanto os helpers com o nome do controller estarão disponíveis apenas na view desse controller. 



Um Helper nada mais é do que um método.
1- Crie seu primeiro helper dentro de `app/helpers/authors_helper.rb`

```
module AuthorsHelper
  def number_of_posts(author)
    if author.posts.count > 0
      author.posts.count
    else
      'None'
    end
  end
end
```



2- Agora, utilize o helper criado anteriormente dentro da sua view `app/views/authors/index.html.erb`

```
      [...]
      <th>Description</th>
      <th>Posts</th>
      <th colspan="3"></th>
      [...]
        <td><%= author.description %></td>
        <td><%= number_of_posts(author) %></td>
        <td><%= link_to 'Show', author %></td>
      [...]
```



3- Suba sua aplicação e veja como ficou o projeto depois da inserção do helper que conta a quantidade de posts  de um autor.

# Referências

https://mixandgo.com/learn/the-beginners-guide-to-rails-helpers

https://www.rubyguides.com/2020/01/rails-helpers/