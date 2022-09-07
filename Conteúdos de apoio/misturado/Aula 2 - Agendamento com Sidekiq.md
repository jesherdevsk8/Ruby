# Agendamento com Sidekiq

O job que você criou na aula passada envia um email informando sobre as publicações que ocorreram na última semana. Sendo assim é interessante criar um agendamento para que esse job seja executado de forma automática uma vez por semana. 



## Sidekiq

Antes de realizar o agendamento é interessante ressaltar que existe uma forma de aproveitar muito bem os recursos de uma máquina para a execução de jobs utilizando uma ferramenta chamada Sidekiq. 

Atualmente muitas empresas utilizam ela e durante essa etapa irei te mostrar como fazer isso em conjunto com o Active Job.

1- Abra o projeto blog com o seu editor de texto favorito e adicione o sidekiq ao seu Gemfile

```
gem 'sidekiq'
```



2- No terminal, execute o comando neessário para instalar a biblioteca adicionada

```
bundle install
```



3- No arquivo `app/application.rb`, adicione a seguinte instrução dentro da classe Application

```
config.active_job.queue_adapter = :sidekiq
```



## Redis

O Sidekiq utiliza o banco de dados Redis para registrar as informações sobre os Jobs que deve executar e pra isso você precisa instalar essa ferramenta em sua máquina. 

1- No terminal, execute a seguinte instrução para instalação do redis

```
sudo apt-get install redis
```



## Executando o Job com o Sidekiq

1- Levante o servidor do redis

```
redis-server --daemonize yes
```



2- Para poder receber os emails disparados pelo Job, levante o mailcatcher

```
mailcatcher
```



2- Agora execute o sidekiq

```
bundle exec sidekiq -q default -q mailers -q notification
```

-q indica que o parâmetro que vem a seguir é o nome de uma fila

Os jobs sempre são gerados com a fila **default** e o **Ruby on Rails** utiliza por padrão a fila **mailers** para o envio de emails.



3- Em um novo terminal, navegue até o projeto blog e abra o rails console

```
rails c
```



4- Execute o Job e comprove que ele continua funcionando, porém, agora sendo executado por uma das melhores ferramentas do mercado!

```
NewPostsNotificationJob.perform_later([{email: 'joao@gmail.com
', name: 'Joao'}, {email: 'lucas@gmail.com', name: 'Lucas'}])
```



## Sidekiq Cron

Para realizar o agendamento de Jobs que são executados pelo Sidekiq de forma periódica é possível utilizar uma biblioteca chamada  Sidekiq Cron.

Veja a seguir como fazer isso:

1- Adicione a biblioteca ao seu Gemfile

```
gem "sidekiq-cron", "~> 1.1"
```



2- No terminal, execute o comando neessário para instalar a biblioteca adicionada

```
bundle install
```



3- Crie um arquivo dentro da pasta `config/initializers` chamado `sidekiq.rb` com a definição do agendamento

```
jobs = {
  'new_post_notification_job' => {
    'cron' => '* * * * *',
    'class' => 'NewPostsNotificationJob',
    'queue' => 'notification',
    'active_job' => true
  }
}

Sidekiq::Cron::Job.load_from_hash(jobs)
```



4- Remova os parâmetros para execução do job e defina os subscribers dentro do método

```
class NewPostsNotificationJob < ApplicationJob
  queue_as :notification

  def perform()
    subscribers = [{email: 'joao@gmail.com', name: 'Joao'}, {email: 'lucas@gmail.com', name: 'Lucas'}]
    posts = Post.where(publish_at: (Time.now - 1.week)..).select(:title)
    subscribers.each do |subscriber|
      SubscribersMailer.with(subscriber: subscriber, posts: posts)
        .new_posts.deliver_now
    end
  end
end
```



5- Veja como funciona a notação de cron através do link abaixo

```
https://crontab.guru
```

