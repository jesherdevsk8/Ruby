# Missões Especiais - Resolução



## Questões

1- O Mailcatcher deve ser utilizado no ambiente de produção?

R: **Não, pois os emails não são enviados de fato para o endereço de destino com sua utilização.**

2- Para que serve o Mailcatcher?

R: **Com o Mailcatcher os emails enviados por uma aplicação serão direcionados para uma caixa de entrada acessível localmente, tornando possível verificar como eles chegaram.** 

3- Qual é o método utilizado para enviar parâmetros para sua action do Action Mailer?

R: **with**

4- Qual é o método você deve utilizar para enviar os emails depois de executar sua action?

R: **deliver_now**



## Prátrica

1- Envie o email **new_post** toda vez que um novo post for criado dentro da sua aplicação.

R: Código utilizado na resolução dentro do model `app/models/post.rb`

```
class Post < ApplicationRecord
  after_create :send_new_post_email
  belongs_to :author
  validates :title, presence: true, length: { minimum: 3, maximum: 200 }

  def send_new_post_email
    PostMailer.with(post: self).new_post.deliver_now
  end
end
```

