# Rotas

No Ruby on Rails é necessário a definição de rotas para que sua aplicação reconheça uma URL e saiba qual controller action deve ser responsável por processá-la.

Veja abaixo um exemplo de como isso funciona: 

![Rails Router](./0_i2J-nAlYkpIrI5PM.png)



Quando sua aplicação recebe a seguitne requisição:

```
GET /site
```

O Rails Router vai procurar por uma definição de rota que combina com a URL requisitada.

Veja abaixo essa declaração que inclui qual controller action deve ser o responsável por tratar a chamada.

```
get '/site', to: 'site#index'
```

(Isso significa que o router **mapeará** as chamadas de **/site** para serem tratadas pelo **Controller** **Site**, na action/método **index**.)



## Resources

Definir rota por rota da sua aplicação pode se tornar um processo extenso e chato e para isso o Rails conta com uma maneira muito simples para definir as rotas necessárias para realizar um **CRUD**.

Mas afinal de contas, o que é um **CRUD**? 

Essa é a abreviação para quatro ações de uma aplicação que trabalha com banco de dados, sendo elas 

* **Create** (Criar)
* **Read** (Ler)
* **Update** (Alterar) 
* **Delete** (Apagar)



Para definir todas as rotas necessárias para essas ações você pode utilizar o método **resources**.

```
resources :users
```



Isso criará as seguitnes rotas:

### **Index**

Lista todos os usuários

**Verbo HTTP:** GET | **Caminho:** `/users` | **Controller#action:**  users#index

______________________________________________

### New

Retorna o HTML necessário para criação de um novo usuário.

**Verbo HTTP:** GET | **Caminho:** `/users/new` | **Controller#action:**  users#new

____________________________________________________________________________________________________________________________________________________________

### Create

Cria um novo usuário

**Verbo HTTP:** POST | **Caminho:** `/users` | **Controller#action:**  users#create

________________________________________________________________________________

### **Show**

Exibe um usuário em específico

**Verbo HTTP:** GET | **Caminho:** `/users/:id` | **Controller#action:**  users#show

__________________________________________________

### Edit

Retorna o HTML necessário para edição de um usuário existente.

**Verbo HTTP:** GET | **Caminho:** `/users/:id/edit` | **Controller#action:**  users#edit

_________________________________________________________________________________________________________

### Update

Atualiza um usuário específico.

**Verbo HTTP:** PATCH/PUT | **Caminho:** `/users/:id` | **Controller#action:**  users#update

__________________________________________________________________________________________________

### Destroy

Exclui um usuário em específico

**Verbo HTTP:** DELETE | **Caminho:** `/users/:id` | **Controller#action:**  users#destroy



## Listando Rotas

Veja a seguir veja duas formas de listar as rotas da sua aplicação.

**Exibindo as rotas pelo Terminal**

1- Navegue até o local do seu projeto e execute o comando a seguir 

```
rails routes
```



**Exibindo as rotas por uma página web**

2- Levante a sua aplicação com a seguinte instrução

```
rails s
```



3- Agora, abra seu navegador e acesse o seguinte endereço.

```
http://localhost:3000/rails/info/routes
```

Essa é uma forma mais compreensível de visualizar e pesquisar pelas rotas da sua aplicação.

# Referências

https://guides.rubyonrails.org/routing.html

https://medium.com/podiihq/understanding-rails-routes-and-restful-design-a192d64cbbb5

