# Parâmetros

Como você viu anteriormente o Rails utiliza um padrão chamado REST por convenção para estruturar a comunicação da sua aplicação e fazer com que o processo de CRUD seja bem definido.

Durante essa comunicação as vezes é preciso que o navegador envie parâmetros para sua aplicação através de uma requisição. Um exemplo disso seria o envio do nome, sobrenome e descrição de um autor para que você registre essa pessoa em sua aplicação do blog.



## Tipos de Parâmetros

Caso você ainda não tenha conhecimento, saiba que existem três tipos de parâmetros, sendo eles:

*  Query Params
* Route Params
* Body Params

onde cada um deles tem sua peculiaridade.



## Conhecendo cada tipo de Parâmetros

### Query Params

Utiliza a url de uma requisição para definir parâmetros que geralmente são utilizados como filtros em consultas.

Esses parâmetros se iniciam logo após o final da URL e seu início é demarcado por um símbolo de interrogação.

Exemplo: 

```
http://localhost:3000/users?first_name=Leonardo&last_name=Rocha
```

Cada um desses parâmetros é constituido por **chave** e **valor**. 

Faça o envio de mais de um query param na mesma requiisição separando  cada um deles pelo símbolo **&**



### Route params ou Path params

Esse tipo de parâmetro é definido na própria rota da sua requisição e geralmente é utilizado para buscar, excluir ou atualizar algo em específico.

Veja abaixo três exemplos de route params

```
GET: https://localhost:3000/users/15
PUT: https://localhost:3000/users/15
DELETE: https://localhost:3000/users/15
```



No caso, o parâmetro em questão é a identificação única de um usuário (id = 15) e ele foi utilizado durante o exemplo para recuperar, atualizar e excluir um usuário específico.



### Body params

Geralmente se trata de um objeto do tipo JSON que é transmitido pelo corpo de uma requisição para criação ou alteração de um registro como no exemplo a seguir:

```json
{
    "first_name": "Leoanrdo",
    "last_name": "Rocha",
    "description": "Professor do curso"
}
```



# Referências

https://blog.rocketseat.com.br/tipos-de-parametros-nas-requisicoes-rest/