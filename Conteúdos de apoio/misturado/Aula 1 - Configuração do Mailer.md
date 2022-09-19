# Configuração do Mailer

Você já viu anteriormente que o Rails conta com o Action Mailer para realizar o envio de emails. É possível te adiantar que ele é uma ótima ferramenta que fornece um conjunto de automações para facilitar este processo de comunicação e nesta aula você verá como realizar as configurações necessárias para começar a utilizar essa ferramenta.



## Mailcatcher

É necessário a utilização de um serviço de envio de emails para realizar os envios em produção, porém, contamos com uma ferramenta que simula esse serviço chamado MailCatcher. Com ele, ao em vez dos Emails serem enviados para o destinatário final, eles acabam indo pra uma caixa de email que estará acessível localmente. Assim você conseguirá realizar testes e ver como eles estão sendo enviados.



1- Para instalar o Mailcatcher, abra o termianr e rode a seguinte instrução

```
gem install mailcatcher
```



2- Agora inicie a ferramenta com o comando abaixo

```
mailcatcher
```

Veja que foi impresso dois links:

* O primeiro será o que você utilizará para configurar sua conexão com esse servidor para envio de emails
* O segundo é o caminho que você pode utilizar para acessar a caixa de emails que foram enviados.



3- Abra o navegador e acesse a caixa de email do mailcatcher através do link retornado no passo anterior

```
http://127.0.0.1:1080/
ou 
http://localhost:1080/
```





## Configuração do Action Mailer

Em uma das aulas passadas você viu que pode definir configurações de acordo com o ambiente em que sua aplicação está sendo executada e saiba que é aconselhável a utilização desses ambientes para configurar a forma como o Action Mailer irá enviar os emails.



1- Abra o projeto blog através do seu editor de texto favorito

2- Navegue até o arquivo de configuração do ambiente de desenvolvimento localizado em `config/environments/development.rb` 

3- Realize a configuração para envio de emails com o trecho de código a seguir

```
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = { address: '127.0.0.1', port: 1025 }
  config.action_mailer.raise_delivery_errors = false
```

O Mailcatcher utiliza o protocolo de comunicação smtp que é o mais comum para o envio de emails.



Essas foram as configurações essenciais para você conseguir começar a trabalhar com o Action Mailer.

Na próxima aula você aprenderá como enviar o seu primeiro email utilizando o Ruby on Rails e perceberá como o Mailcatcher pode ser útil.