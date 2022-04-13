#### **Poliformismo**

1- Crie um arquivo chamado **polymorphic.rb** com o seguinte código

```
class Instrumento
  def escrever
    puts 'Escrevendo'
  end
end
 
class Lapis < Instrumento
  def escrever
    puts 'Escrevendo à Lápis'
  end
end
 
class Caneta < Instrumento
  def escrever
    puts 'Escrevendo à Caneta'
  end
end

class MaquinaDeEscrever < Instrumento
  def escrever
    super
    puts 'com a máquina'
  end
end
 
instrumentos = [Lapis.new, Caneta.new]
# Chamamos o método escrever pra qualquer instrumento
Instrumentos.each do |instrumento|
  Instrumento.escrever
end
```

O comportamento do método escrever depende do Objeto que o invoca.