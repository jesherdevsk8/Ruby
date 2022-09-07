# Utilizando Partils

Uma página html pode conter uma extensa quantidade de linhas de código e para facilitar o gerenciamento dessas páginas existe algo chamado Partials o que permite dividir uma página em vários pedaços organizados e possivelmente reutilizáveis.



1- Para renderizar a partial como uma parte da view, utilize o helper **render** como no exemplo a seguir

```
<%= render "menu" %>
```



2- Toda nome de uma partial começa com o símbolo `_` 
Crie sua primeira partial dentro de `app/view/posts` com o nome de **_form.html.erb**



3- Insira o seguinte conteúdo dentro dela

```
Minha primeira partial
```



4- Adicione um before_action dentro do controller Posts para atribuir o valor de um post para os métodos edit e update

```
  before_action :set_post, only: %i[show edit update destroy]
  
[...]
  private

  def set_post
    @post = Post.find(params[:id])
  end
[...]
```



5- Crie os seguintes métodos dentro do controller Posts

```
[...]
  def show
  end
  
  def new
    @post = Post.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
[...]
```



6- Agora que você criou todos os métodos para realização de um CRUD substitua essa linha dentro do arquivo `config/routes.rb`

```
get '/posts', to: 'posts#index'
```

por essa

```
resources :posts
```

7- Depois de definir as rotas, crie seguintes arquivos dentro da pasta `app/views/posts`

* `new.html.erb`
* `edit.html.erb`
* `show.html.erb`

8- Renderize a partial `_form.html.erb` de Posts dentro das views **new** e **edit** com a seguinte instrução

```
<%= render partial: 'form', locals: { post: @post } %>
```

Perceba que essa é uma forma diferente da primeira que você viu, exatamente porque você está passando uma variável para a partial que está renderizando.

9- Levante sua aplicação e veja que a página new e edit de Posts está renderizando a partial que você acabou de definir.