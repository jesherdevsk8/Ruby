#### **Atributos**

### **O que são atributos?**

Como você já sabe objetos possuem informações e comportamentos.

Você já viu como utilizar métodos para representar comportamentos de um objeto. Agora é hora de  aprender como adicionar e recuperar **informações** de um objeto.

 

**Adicionando e Recuperando Informações**

1- Crie um arquivo chamado **atributos.rb **com o código

```
class Dog 
  def name
    @name
  end
 
  def name= name
    @name = name
  end
end

dog = Dog.new 

dog.name = 'Marlon'

puts dog.name
```

O segundo método recebe um valor e o atribui a variável @name.O primeiro método da classe **Dog **retorna o valor da variável de instância @name. Se a variável ainda não estiver definida, o resultado será nil.

Podemos dizer que o primeiro é para recuperar e o segundo para adicionar/alterar uma informação. 

Declarar os métodos de um atributo pode ser vantajoso caso queira fazer algo além de definir o valor da variável de instância. De outra forma, existe uma maneira mais fácil de realizar esta operação.  

 

2- Substitua o código de **atributos.rb** por

```
class Dog 
  attr_accessor :name, :age
end


dog = Dog.new 

dog.name = 'Marlon'
puts dog.name

dog.age = '1 ano'
puts dog.age
```

O ruby disponibiliza um método chamado attr_accessor que cria os métodos var e var= para todos atributos declarados.