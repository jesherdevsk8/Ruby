# Action Cable

Existem aplicações com funcionalidades que precisam sempre se manter atualizadas a medida que eventos acontecem, como por exemplo um chat, uma notificação, a edição de um conteúdo de forma compartilhada e etc. 

Esses tipos de funcionalidades são chamadas de Realtime e para facilitar sua implementação em um projeto Ruby on Rails contamos com uma ferramenta chamada Action Cable.



## HTPP vs Websocket

Até o momento utilizamos apenas o protocolo web HTTP para realizar a comunicação entre o cliente e o servidor. Para seu funcionamento o cliente deve sempre enviar uma requisição e esperar por uma resposta do servidor e essa não é uma boa forma de manter uma aplicação atualizada pois você teria que realizar requisições a todo momento.

Para isso existe um protocolo chamado Websocket, o qual possibilita uma conexão bidirecional entre o cliente e o servidor, onde o servidor poderá fazer contato com o cliente sempre que houver uma nova atualização.

O Action Cable então utiliza o Websocket tendo em vista as vantagens de comunicação citadas acima e por consequência a construção de aplicações Realtime com Ruby on Rails são bem performáticas.



Veja a próxima aula para aprender como realizar a configuração inicial do Action Cable.

