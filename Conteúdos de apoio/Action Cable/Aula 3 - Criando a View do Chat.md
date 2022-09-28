# Criando a view do chat

1- Utilize o generator de criação de controller para criar o controller e views da página do chat

```
rails g controller Chat room
```

 

2- Adicione o código HTML da view no arquivo `app/views/chat/room.html.erb`+

```
<div class='center'>
  <h1>Room</h1>
  <div id='messages'>
  </div>

  <form class='chat-form-content'>
      <label type='text' for='message_to_sent'>Mensagem: </label>
      <input type='text' id='message_to_sent' autocomplete="off" />
  </form>
</div>
```



3- Para deixar a página mais organizada, insira o css que vem a seguir dentro do arquivo `app/assets/stylesheets/application.css`

```
.center {
  text-align: center;
  margin-bottom: 100px;
}

.chat-form-content {
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

