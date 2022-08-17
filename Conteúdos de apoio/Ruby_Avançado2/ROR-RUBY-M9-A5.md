**Self**

No ruby, self é uma **variável especial** que **aponta** para o **objeto atual**.

1- Crie o arquivo **self.rb** com o seguinte código

```
class Foo
  attr_accessor :teste
  def bar
    puts self
  end
end

foo = Foo.new
puts foo
foo.bar
```

A variável **self** aponta para o **Objeto** onde ela se encontra.  No caso está apontando para uma instância da classe Foo e, por isso, as instruções **puts** **foo** e **puts** **self** retornam o mesmo resultado.

Perceba que a variável self **não precisa** ser declarada. Ela é disponível em qualquer lugar, mas não esqueça que seu valor é referente ao objeto que pertence.

**Variáveis self em objetos diferentes possuem valores diferentes.**

2- Com o **self** é possível criar **métodos de classe**,  que não precisam de uma instância para serem chamados.

```
class Foo
  def self.bar
    puts self
  end
end

Foo.bar
```

3- Você também pode utilizá-lo para se referir a atributos do objeto atual.

```
class Pen
  attr_accessor :color
  def pen_color
    puts "The color is " + self.color
  end
end

pen = Pen.new
pen.color = "blue"
pen.pen_color
```

O **self.color** retorna a cor do objeto **pen**.