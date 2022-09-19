Configuração inicial

1- Abra o terminal, navegue até o local onde você guarda seus projetos e crie um novo projeto chamado **chat**

```
rails new chat
```



2- Entre dentro da pasta do projeto

```
cd chat
```



3- É necessário criar um canal para tornar possível a conexão entre o cliente e o servidor. Faça isso através da seguinte instrução:

```
rails g channel chat speak
```



4- Abra o projeto através do seu editor de textos favorito



5- Dentro do arquivo `app/channels/chat_channel.rb ` adicione a seguinte instrução dentro do método subscribed

```
  def subscribed
    stream_from "chat_channel"
  end
```



6- Ainda no mesmo arquivo, substitua o método speak pelo código que vem a seguir

```
  def speak(data)
    ActionCable.server.broadcast("chat_channel", { message: data['message'] })
  end
```



Criando a view do chat

1- Utilize o generator de criação de controller para criar o controller e views da página do chat

```
rails g controller Chat room
```

 

2- Adicione o código HTML da view no arquivo `app/views/chat/room.html.erb`

```
<div class='center'>
  <h1>Room</h1>
  <div id='messages'>
  </div>

  <form>
    <div class='content'>
      <label type='text' for='message_to_sent'>Mensagem: </label>
      <input type='text' id='message_to_sent' autocomplete="off" />
    </div>
  </form>
</div>
```



3- Para deixar a página mais organizada, insira o css que vem a seguir dentro do arquivo `app/assets/stylesheets/application.css`

```
.center {
  text-align: center;
  margin-bottom: 100px;
}

.content {
  position: fixed;
  bottom:40px;
  width: 100%;
}
```



6- Para que seja possível visualizar que a conexão funcionou adicione o seguinte código dentro do método **connected()** no arquivo `app/javascript/channels/chat_channel.js`

```
  connected() {
    console.log("Connected to the chat room!");
  }
```
