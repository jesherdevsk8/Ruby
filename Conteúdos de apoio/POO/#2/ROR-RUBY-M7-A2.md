#### **Escopo das variáveis**

Agora que você sabe dividir um programa em vários arquivos é interessante aprender sobre os diferentes tipos de escopos de variáveis presentes no Ruby. Com este conhecimento você terá a capacidade de escolher qual utilizar dependendo da situação.

As variáveis se dividem em 04 tipos:

- **Variável Local**
- **Variável Global**
- **Variável de Classe**
- **Variável de Instância**

A seguir, veja características de cada uma:

 

### **Variável Local**

É declarada com a primeira letra de seu nome sendo uma letra minúscula ou sublinhado.

Pode ser **acessada apenas onde foi criada**. Por exemplo, se você definir uma variável local dentro de de uma classe ela estará disponível apenas dentro desta classe, se a definiu dentro de um método conseguirá acessá-la apenas dentro deste método e assim por diante.

Exemplo:

```
class Bar
  def foo
    # Pode ser definida como local ou _local
    local = 'local é acessada apenas dentro deste metodo'
    puts local
  end

  def example
    local
  end
end

bar = Bar.new
bar.foo
```



### Variável Global

Declarada com o prefixo $.

Pode ser **acessada em qualquer lugar do programa**.

Seu uso é **FORTEMENTE DESENCORAJADO** pois além de ser visível em qualquer lugar do código, também pode ser alterada em inúmeros locais ocasionando dificuldades no rastreamento de bugs.

Exemplo:

```
class Bar
  def foo
    $global = 0
    puts $global
  end
end
 
class Baz
  def qux
    $global += 1
    puts $global
  end
end
 
bar = Bar.new
baz = Baz.new
bar.foo
baz.qux
baz.qux
puts $global
```



### **Variável de Classe**

É declarada com o prefixo @@.

Pode ser acessada em qualquer lugar da classe onde foi declarada e seu valor é **compartilhado** entre todas as **instâncias de sua classe**.

Exemplo:

```
class User
  @@user_count = 0
  
  def add(name)
    puts "User #{name} adicionado"
    @@user_count += 1
    puts @@user_count
  end
end

first_user = User.new
first_user.add('João')

second_user = User.new
second_user.add('Mario')
```



### **Variável de Instância**

Seu nome começa com o símbolo @.

Semelhante a variável de classe, tendo como única diferença o valor que **não é compartilhado** entre todas as **instâncias de sua classe**.

Exemplo:

```
class User
  def add(name)
    @name = name
    puts "User adicionado"
    hello
  end

  def hello
    puts "Seja bem vindo, #{@name}!"
  end
end

user = User.new
user.add('João')
```

