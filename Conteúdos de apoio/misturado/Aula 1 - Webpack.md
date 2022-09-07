# Webpack

É um empacotador de módulos que permite a escrita de códigos front-end de forma compreensível aos desenvolvedores para depois transformar isso em algo que será melhor processado pelo navegador. Através dele você conseguirá manipular códigos Javascript, CSS e coisas estáticas como imagens e fontes e por causa da sua popularidade, diversas bibliotecas possuem um passo a passo de instalação utilizando ele.



## Webpacker

Um projeto padrão contém uma biblioteca chamada **Webpacker**, a qual é responsável por tornar possível a utilização do **Webpack** dentro do Ruby on Rails.



## Integração de frameworks

Através do Webpacker é possível integrar frameworks **front-end** a um projeto **Rails** como por exemplo:

* Angular
* React
* VueJS
* Typescript



E tudo isso de uma forma bem simples, como no comando a seguir:

```
rails webpacker:install:react
```



## Como utilizar

Por causa da utilização do Webpack existe algo dentro de um projeto Ruby on Rails chamado Pack, que de forma ideal deve ser utilizado para concentrar o carregamento e inicialização de alguns arquivos ou bibliotecas. Esses packs devem ser definidos dentro de `app/javascript/packs`  e um exemplo disso é um arquivo que já vem por padrão chamado `applications.js`.  Tudo que tem o nome **application** dentro do Ruby on Rails significa a base de algo e neste caso trata-se de um arquivo que é direcionado ao Javascript base da aplicação.



1- Abra o probjeto **blog** por meio do seu editor de textos favorito.

2- Navegue até o arquivo `app/views/layouts/application.html.erb` e veja que para utilizar o **pack**  application dentro do seu projeto, basta apenas empregar o método **javascript_tag**

```
<%= javascript_pack_tag "application" %>
```



3- O Webpack não tem nenhuma opinião sobre como você deve escrever seu código fonte, porém, ele deve ser adicionado dentro de `app/javascript` (lembre-se apenas de que isso deve ocorrer fora da pasta **packs**).



## Próxima Aula

O Rails também vem com outra ferramenta para processar seus códigos front-end e você verá na próxima aula as principais diferenças entre ela e o Webpacker.