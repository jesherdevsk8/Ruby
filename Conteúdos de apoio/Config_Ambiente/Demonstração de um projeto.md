# Demonstração de um projeto

Nesta aula te mostrarei como o Rails facilita a vida de um programador construindo uma pequena aplicação em poucos minutos. A aula será apenas para demonstração e você não precisa seguir os passos presentes nela.



## Passo a Passo

O Rails também é uma gem e para utilizá-lo você precisa instalá-lo em sua máquina. 

1- Para instalar a versão **6.1** do **Rails** abra seu terminal e execute o seguinte comando

```
gem install rails -v 6.1
```



2- Com a versão 6.1 instalada, crie o projeto com o seguinte comando

```
rails _6.1_ new biblioteca
```

Esse comando irá criar toda a estrutura inicial do seu projeto. 

Perceba que foi utilizado  `_versão_` para especificar qual versão do Rails deveria ser utilizada no projeto.



3- Navegue até a pasta do projeto criado

```
cd biblioteca
```



4- Utilize o comando scaffold para criar a entidade Livro em nosso projeto.

```
rails generate scaffold Book name:string description:string genre:string quantity:integer
```



5- Depois é necessário aplicar as mudanças ao Banco de Dados. Faça isso com o seguinte comando:

```
rails db:migrate
```



6- Agora levante o servidor com o comando descrito abaixo

```
rails s
```



7- Acesse a rota `http://localhost:3000/books` para visualizar os recursos disponíveis para o livro. 