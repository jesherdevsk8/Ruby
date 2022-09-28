# Enviando mensagens em Realtime

1- Abra o terminal, navegue até o projeto chat e execute a seguinte instrução

```
yarn add jquery
```



2- Substitua o código do arquivo `config/webpack/environment.js` pelo que vem a seguir

```
const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery'
  })
)
module.exports = environment
```



3- Agora abra o arquivo chat_channel.js



4- Salve o Channel dentro de uma variável

```
const chatChannel = consumer.subscriptions.create("ChatChannel", {
```



5- Altualize o método received para o código que vem a seguir

```
  received(data) {
    $('#messages').append(`<p>${data.message}</p>`);
    $('html, body').animate({scrollTop:$(document).height()}, 0);
  },
```



6- Também atualize o método speak

```
  speak: function(message) {
    return this.perform('speak', { message });
  }
```



7- Por fim, no final do arquivo adicione o código que  vai chamar o o método speak quando o formulário de enviar a mensagem for acionado.

```
[...]

$(document).on('turbolinks:load', function () {
  $("#message_form").on('submit', function(e){
    e.preventDefault();
    let message = $('#message_to_sent').val();
    if (message.length > 0) {
      chatChannel.speak(message);
      $('#message_to_sent').val('')
    }
  });
})
```

