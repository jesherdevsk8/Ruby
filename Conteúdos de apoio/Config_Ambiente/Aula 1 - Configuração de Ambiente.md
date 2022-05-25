# Configuração de Ambiente

Durante a criação do seu aplicativo Ruby on Rails é gerado três ambientes de desenvolvimento mais comuns entre aplicações web, sendo eles o ambienet de **test**, **development** e o **production**.

Você encontrará as configuração desses ambientes nos seguintes arquivos:

* config/environments/test.rb
* config/environments/development.rb 
* config/environments/production.rb



## Conhecendo os ambientes

Cada ambiente terá o seu propósito e suas configurações particulares como por exemplo o banco de dados a ser utilizado, o local para armazenar arquivos, a forma de enviar emails, a maneira de utilizar caches, ou então, como lidar com algumas situações dependendo do ambiente que você está trabalhando. 

Conheço um pouco de cada ambiente logo abaixo: 

### Test

Este ambiente é utilizado para executar testes em sua aplicação e verificar se ela funciona da forma que deveria. Você precisará bastante dele durante a implementação de testes automatizados.



### Development

O Ambiente de desenvolvimento é utilizado de forma individual durante a construção da sua aplicação e sua configuração inicial dentro do Ruby on Rails conta com diversos recursos para que esse processo de codificar seja produtivo.



### Produção

As configurações da versão que seu projeto será disponibilizado (onde seu projeto ganha vida) encontram-se dentro deste ambiente. 

Diferente do ambiente de desenvolvimento que foca na produtividade do programador, esse ambiente procura ser performático para que os utilizadores finais do projeto não encontrem gargá-los durante sua experiência.



## Um pouco sobre ambientes na prática

1- Navegue até o local onde está seu projeto criado anteriormente e abra o console do Rails com o seguinte comando:

```
rails console
```



2- Verifique qual ambiente você está utilizando no momento executando a instrução

```
ENV['RAILS_ENV']
```

Se você **não defiinir o ambiente** durante a execução dos comandos  `rails console` ou `rails server` o Rails utilizará por **padrão** o ambiente de **Development**



3- Feche o console pressionando `ctrl + d`



4- Inicie o Rails Console no ambiente de **production** com a opção `-e`

```
rails console -e production
```



5- Note que existe uma forma bem intuitiva de verificar se o seu amibente atual é de produção com o seguinte comando

```
Rails.env.production?
```

O retorno dessa instrução será um valor Booleano e por meio dela você conseguirá utilizar condições para executar códigos dependendo do seu ambiente de desenvolvimento. 



6- O comando acima também funciona para verificar outros ambientes

```
Rails.env.test?
```

A instrução retornará false, já que você está atualmente no ambiente de produção. 

# Fontes

https://teotti.com/use-of-rails-environments/