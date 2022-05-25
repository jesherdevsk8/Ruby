# Callbacks dos Controllers

Em um controller, callbacks serão códigos executados em diferentes momentos do ciclo de vida de uma ou mais actions. Eles são muito importante para utilização do padrão DRY, que evita a repetição de códigos.

Nesta aula eu apresentarei os principais tipos de callbacks dos controllers que você com certeza utilizará durante sua jornada como programador.



## Before Action

Callbacks que são executados antes de uma ou mais actions. Se existir um redirecionamento ou renderização dentro desse callback, a action não será executada.

Abra o projeto **blog** e veja um exemplo desse callback no arquivo `app/controllers/authors_controller.rb`, na linha 2.

O callback **set_author** é um método presente na linha 61 e o autor que é deinido dentro dele será utilizado pelas actions show, edit, update, destroy.



## After Action

Sua definição é muito semelhante ao before_action, porém, esse tipo de callback será executado depois de uma action.

Veja a seguir como definir um callback **After Action**:

```
after_action :initial_value, only: %i[index show]
```



## Skip Before Action

É possível ver que Authors Controller é herdeira da classe ApplicationController, sendo assim, todos os callbacks dessa classe serão executadas em Authors Controller.

Skip Before Action tem como intuito ignorar a execução de um callback do tipo Beore Action. Veja abaixo um exemplo de definição desse callback.

```
skip_before_action :require_login, :only => %i[landing connect create]
```



## Skip After Action

É um callback que serve para ignorar a execução de um outro callback do tipo After Action. A seguir existe um exemplo de definição deste callback.

```
skip_after_action :initial_value, only: %i[index show]
```