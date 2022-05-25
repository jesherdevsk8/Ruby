# Missões Especiais

Realize as seguintes missões especiais para reforçar seu conhecimento sobre este módulo

1- Quantas actions você pode definir durante a criação de um controller por um generator?

**R: Você pode definir quantas actions quiser durante a criação de um controller por generator.**

2- Qual view deve ser renderizada após a execução da action **show** do controller **Authors**?

**R: A view que deve ser renderizada após a execução da action show do controller Authors encontra-se no seguinte caminho `app/views/authros/show.html.erb`**

3- Como você faria para definir uma rota do tipo **post** que aponta para o controller **Site**, em uma action chamada **landing**?

**R: Para mapear a rota do controller Site, para uma action chamada landing é necessário adicionar a seguinte linha ao Router: `post '/landing', to: 'site#landing'`**

4- Qual a principal diferença entre as respostas **redirect_to** e **render**

**R: A principal diferença é que o redirect_to irá executar o código da action para qual faz o redirecionamento enquanto o render irá apenas renderizar a resposta.**

5- Qual é a resposta do Ruby on Rails quando você utiliza **Strong Params** e um parâmetro que **não** é **permitido** é enviado durante uma requisição?

**R: A resposta do Ruby on Rails quando um parâmetro que não é permitido é enviado será 400 - Bad Request**

6- Em qual momento do ciclo de vida de uma action é executado o código de um callback **before_action**?

**R: O callback before_action sempre será executado antes de uma action ou mais actions.**