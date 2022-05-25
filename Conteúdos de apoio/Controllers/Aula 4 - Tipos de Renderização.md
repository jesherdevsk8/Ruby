# Tipos de Renderização

Ao final da execução de um Controller o Rails deve retornar a resposta para a requisição solicitada. Por padrão essa resposta é a renderização de uma página **HTML** como você chegou a ver em aulas anteriores.

Apesar dessa convenção, é possível que você defina como deve ser a resposta de forma manual. A seguir, conheça os possíveis tipos de resposta existentes:



### Render

Cria uma resposta completa para ser enviada ao navegador.



### Redirect to

Redireciona o navegador para um caminho especificado em suas opções.



### Head

Constrói uma resposta composta apenas por cabeçalhos que será enviada de volta ao navegador.



## Conhecendo mais sobre os retornos

Siga os passos a seguir para ver um exemplo de cada tipo de resposta que você conheceu anteriormente.

1- No seu projeto do blog é preciso disponibilizar as operações de CRUD para gerenciamento de autores de um post. Para isso  abra o terminal, navegue até o projeto e crie o seguinte scaffold.

```
rails g scaffold Author first_name:string last_name:string description:string
```



2- Abra o projeto no seu editor de texto favorito e vá até ao arquivo `app/controllers/authors_controller.rb`



3- É possível definir em uma chamada qual é o tipo de resposta que ela espera receber. 

Perceba que linha 26 existe um método chamado `respond_to` que é utilizado para a definição de mais de um tipo de resposta.



4- Na linha 28 existe um formato de resposta para requisições que esperam uma resposta HTML. 

Neste caso é utilizado o método **redirect_to** para o redirecionamento para a action **show** do mesmo controller. Através da sua utilização o código do método **show** será executado antes de realizar o retorno.



5- Já na linha 29 é utilizado o método **render** para retornar a resposta para uma chamada **JSON**. 

A **diferença** entre o **render** e o **redirect_to** é que o **render** irá apenas **renderizar** a resposta do método **show**, **sem executar o código** presente nessa **action**.



6- Por fim, veja que na linha 55 existe a definição do método **head** para uma chamada com retorno **JSON**. Seu objetivo é a  construção de uma resposta simples, contendo apenas cabeçalhos.  