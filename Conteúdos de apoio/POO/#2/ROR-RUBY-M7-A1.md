#### **Require**

Em uma das aulas deste curso, você aprendeu a utilizar require ‘gem_name’ para carregar arquivos de uma gem e assim poder escrever códigos com funcionalidades desta biblioteca.

Com ele também é possível carregar arquivos ruby que foram escritos por você. 

Para exemplificar como isso acontece você criará um projeto onde alguns arquivos conterão apenas uma classe.

 

**Projeto**

1- Crie a pasta do projeto **Animal** executando

```
mkdir animal
```

2- Dentro da pasta animal crie um arquivo chamado **animal.rb** com o código:

```
class Animal 
  def pular
   puts 'Toing! tóim! bóim! póim!'
  end

  def dormir
    puts 'ZzZzzz!'
  end
end
```

3- Agora crie um arquivo com o nome **app.rb **e adicione a ele o código:

```
require './animal.rb'

animal = Animal.new

animal.pular
```

Perceba que no **require**, você especificou o arquivo que será procurado partindo do caminho relativo a **app.rb**.

Quando você não está trabalhando com gems e quer carregar um arquivo a partir do caminho onde o código será executado, utilize o **require_relative**.

4- Substitua o código de **app.rb **por

```
require_relative 'animal'
 
animal = Animal.new
animal.pular
```

Se o arquivo **animal.rb **estivesse dentro de uma pasta chamada example, o caminho ficaria ‘example/animal’.Como só existe um arquivo chamado **animal **não é preciso especificar a sua extensão.

5- Agora, crie um arquivo chamado **cachorro.rb** com o código:

```
class Cachorro < Animal
  def latir
    puts 'Au Au'
  end
end
```

A classe **Cachorro** recebe como herança a classe **Animal**.

Porque o **require_relative** de **animal.rb **não está ai?

A resposta é simples:

Você irá inicializar a classe **Cachorro** dentro de **app.rb** e esse arquivo já faz um require_relative de **animal.rb**!

 

6- Para incluir a inicialização e execução dos métodos da classe **Cachorro **substitua o arquivo de **app.rb** por:

```
require_relative 'animal'
require_relative 'cachorro'

puts '--Animal--'
animal = Animal.new
animal.pular

puts '--Cachorro--'
cachorro = Cachorro.new
cachorro.pular
cachorro.latir
```

7- Execute o programa e veja o resultado

```
ruby app.rb
```

