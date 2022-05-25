# Strong Params

Algumas das informações de um registro são sensíveis e não podem ser gerenciadas pelo usuário. Por isso o Rails conta com uma medida de segurança chamada Strong Params, onde é necessário definir o que é permitido para garantir confiabilidade durante o tratamento de dados.



## Entendendo o Strong Params

1- Navegue até o arquivo `app/constrollers/authors_controller.rb`

2- Vejá a definição de como devem ser os parâmetros do autor no método `author_params` presente na linha `66`

3- Todos os tipos de parâmetros que você conheceu na aula anterior se encontram dentro de `params`

4- O método **require** tem a função de definir parâmetros obrigatórios. Quando um parâmetro obrigatório não é passado durante a requisição, sua aplicação retornara uma resposta com o status **400** que significa **Bad Request**.

5- O método permit tem como finalidade permitir parâmetros de forma opcional. Caso seja passado um parâmetro fora dos que são permitidos a resposta também será 400 - Bad Request.

6- Geralmente o Strong Params é utilizado para mapear body params, que são utilizados para Criar ou Atualizar um novo registro

7- Veja abaixo como deveria ser o corpo de uma requisição para a criação de um autor, de acordo com o mapeamento do Strong Params

```
{
    "author": {
        "first_name": "Leonardo",
        "last_name": "Rocha",
        "description": "Professor do curso"
    }
}
```