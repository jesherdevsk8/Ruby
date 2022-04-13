#### **Herança**

Para herdar características de outra classe, adicione na frente do nome de uma classe filha o símbolo de menor e  depois o nome da classe pai.

Ex:

```ruby
class ClasseFilha < ClassePai
end
```



1- Crie um programa chamado animal.rb com o seguinte código

```ruby
class Animal 
 def pular
   puts 'Toing! tóim! bóim! póim!'
 end

 def dormir
   puts 'ZzZzzz!'
 end
end

class Cachorro < Animal
 def latir
   puts 'Au Au'
 end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir
```

