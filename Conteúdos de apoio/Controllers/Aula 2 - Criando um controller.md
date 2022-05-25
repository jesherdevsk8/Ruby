# Criando um controller

Como você já viu o que é um **Controller** de forma **teórica** em aulas passadas, agora está na hora de **aprender** na **prática** como gerar um **Controller** através dos templates do Ruby on Rails e ver como esse controller funciona. 



## Generator

1- O Rails automatiza o trabalho de criação e configuração de arquivos através de generators. Veja isso na prática gerando um controller com o seguinte comando

```
rails generate controller Site index
```

* Após a instrução `rails generate controller` vem o o nome do Controller e depois separado por espaços uma lista de métodos que existirão dentro dele. Neste caso você utilizou apenas um método chamado index.
* Note que no terminal foi impresso a lista de ações que o comando realizou.



2- Levante a sua aplicação com a instrução

```
rails s
```



3- Va até as rotas da aplicação que estão localizadas em `config/routes.rb` e veja que está definido um get para site index. 



4- Você não precisa da palavra index em sua rota, então faça as seguitnes alterações para alterar esse caminho sem alterar o controller e método a serem chamados.

```
Rails.application.routes.draw do
  get '/site', to: 'site#index'
end
```



5- Agora acesse a rota descrita acima utilizando o navegador

```
http://localhost:3000/site
```



6- Após executar o código do controller o Rails procura a view a ser renderezida dentro de `app/views`.

O padrão para essa busca é 

* Procurar uma pasta dentro do diretório **views** com o **nome do controller**. No caso seu controller chama **site**.


* Depois ele procura por um arquivo com o nome do método. Como seu método chama-se **index**, ele procura pelo arquivo **index**.html.erb. 

  ​
  Esta extensão **.html.erb** é de um arquivo html que possibilita utilização de códigos Ruby.



7- Substitua o conteúdo da view mencionada acima para o código descrito logo abaixo. 

```
<h1>Dominando o Ruby e o Ruby on Rails</h1>
<p>Esta é minha página inicial.</p>
```



8- Atualize a página que você acessou anteriormente e veja que o conteúdo dela realmente foi alterado! 



9- Existe um caminho chamado root que aponta para o caminho `/` da sua aplicação.

Para definir ele utilize a instrução root em `config/roots.rb`

```
Rails.application.routes.draw do
  get '/site', to: 'site#index'
  root to: 'site#index'
end
```



10- Agora você pode acessar a página inicial da sua aplicação através do link `htpp://localhost:3000/`