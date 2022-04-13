### **Classes no Ruby**

Uma classe é definida pela palavra **class** seguida de seu **Nome,** e finalizada pela palavra **end.**

O nome de uma classe deve sempre começar com letra maiúscula. Para nomes compostos utilize o padrão **CamelCase**.

1- Crie um arquivo chamado **computer.rb **com o seguinte código

```ruby
class Computer
 def turn_on
   'turn on the computer'
 end
 
 def shutdown
   'shutdown the computer'
 end
end
```

Você criou a classe do objeto **Computer** com os métodos **turn_on** e **shutdown**.

2- Inicialize um novo objeto **Computer** e depois execute seu comportamento shutdown adicionando o seguinte código ao final do arquivo **computer.rb**.

```ruby
computer = Computer.new
computer.shutdown
```

Neste programa você utilizou dois pilares da programação orientada a objetos:

**Abstração** -> representando o objeto Computer em uma classe.

**Encapsulamento **-> dividindo o projeto em pequenas partes.

3- Execute o programa

```ruby
ruby computer.rb
```

4- Faça o teste novamente trocando a instrução **computer.shutdown** por **computer.turn_on****.**