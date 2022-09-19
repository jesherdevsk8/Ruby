# Missões Especiais - Resolução

Veja a seguir a resolução da missão especial que foi passada na aula anterior:



1- Abra o projeto **chat** através do seu editor de texto preferido



2- Adicione o input do remetente no arquivo `app/views/chat/room.html.erb`

```
      <label type='text' for='sender'>Remetente: </label>
      <input type='text' id='sender' />
      [...]
      <input type='submit' value='Enviar'/>
```



3- Envie o remetente para o método speak anterando o evento **on submit** dentro do arquivo  `app/javascript/channels/chat_channel.js`

```
$(document).on('turbolinks:load', function () {
  $("#message_form").on('submit', function(e){
    e.preventDefault();
    let data = {
      message: $('#message_to_sent').val(),
      sender: $('#sender').val()
    }

    if (data.message.length > 0 && data.sender.length > 0) {
      chatChannel.speak(data);
      $('#message_to_sent').val('')
    }
  });
})
```



3- Ainda dentro do mesmo arquivo atualize o método speak para receber o objeto com a mensagem e o remetente

```
  speak: function(data) {
    return this.perform('speak', data);
  }
```



4- Agora você precisa ajustar o método **speak** dentro do arquivo `app/channels/chat_channel.rb` para que ele também envie essa nova informação ao realizar o transmissão para o cliente.

```
  def speak(data)
    ActionCable.server.broadcast('chat_channel', data)
  end
```

 

5- Por fim, volte ao arquivo `app/javascript/channels/chat_channel.js` e altere o método **received** para que ele também exiba quem foi a pessoa que enviou a mensagem.

```
  received(data) {
    $('#messages').append(`<p>${data.sender}: ${data.message}</p>`);
    $('html, body').animate({scrollTop:$(document).height()}, 0);
  },
```

