# Asset Pipeline

Caso você ainda não saiba, o Webpacker é um ferramenta nova dentro do Ruby on Rails e antes da sua adoção todo o processamento de gerência dos assets era realizado por uma ferramenta chamada Asset Pipeline, que é algo   construido a partir de uma biblioteca chamada **sprockets-rails**. 

Suas principais características são:

* Concentrar Assets
* Minificar ou Compactar o Asset
* Codificação através de linguagens de alto nível, como por exemplo Sass para CSS, CoffeeScript para JavaScript, e ERB para ambos




## Como utilizar

Para utilizar essa ferramenta basta apenas que você adicione os assets do seu projeto a pasta `app/assets`



## Compilação

Como dito anteriormente o Rails utiliza estratégias para aumentar a performance da renderização dos assets do seu projeto no ambiente de produção e para que isso seja feito você deve ter ciência de que é preciso compilar esses arquivos antes que uma nova alteração seja enviada.

Para isso  tenha em mente que você deve utilizar o seguinte comando:

```
RAILS_ENV=production rails assets:precompile
```

Esse comando irá compilar tanto arquivos presentes no Asset Pipeline quanto no Webpacker.