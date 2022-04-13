#### **Contrutores**

Outra questão importante é que toda vez que a instância de uma classe é criada, o Ruby procura por um método chamado initialize. Você pode criar este método para especificar valores padrões durante a construção da classe.

1- Crie um arquivo chamado **construtor.rb **com o seguinte código

```
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
 
  def check
    puts "Instância da classe iniciada com os valores:"
    puts "Name = #{@name}"
    puts "Idade = #{@age}"
  end
end
 
person = Person.new('João', 12)
person.check
```

O número de parâmetros utilizados no método initialize é opcional.

 

2- É possível criar a instância com valores padrões do objeto e executar o método check em apenas uma instrução.

Substitua as duas últimas linhas do programa por:

```
Person.new('João', 12).check
```

