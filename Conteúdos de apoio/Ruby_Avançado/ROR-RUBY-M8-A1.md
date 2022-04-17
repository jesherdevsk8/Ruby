#### **Blocks**

Um bloco pode ser entendido como uma função anônima, ou seja, uma função sem nome. É definido entre **do**..**end**  ou **colchetes** e da mesma forma que os métodos que você viu até agora, pode receber parâmetros para sua execução.

 

Use **colchetes **para escrever blocos que ocupam apenas uma linha.

1- Em um arquivo chamado **block.rb** adicione o seguinte código:

```
5.times { puts "Exec the block" }
```

2- Utilize barras verticais para passar parâmetros para um bloco

```
sum = 0
numbers = [5, 10, 5]
numbers.each {|number| sum += number }
puts sum
```

3- Em blocos que ocupam várias linhas, faça uso do **do..end**

```
foo = {2 => 3, 4 => 5}

foo.each do |key, value|
  puts "key = #{key}"
  puts "value = #{value}"
  puts "key * value = #{key * value}"
  puts '---'
end
```

4- Um bloco pode ser passado como  argumento implícito de um método.

Depois, para chamar dentro do método o bloco que foi passado utilize a palavra **yield**

```
def foo
  # Call the block
  yield
  yield
end

foo { puts "Exec the block"}
```

Perceba que ao chamar o método, o bloco será executado duas vezes.

5- E se o bloco for opcional?

O ruby oferece um método chamado **block_given? **para verificar se o bloco foi passado como argumento

```
def foo
  if block_given?
    # Call the block
    yield
  else
    puts "Sem parâmetro do tipo bloco"
  end
end

foo
foo { puts "Com parâmetro do tipo bloco"}
```

Note que você criou um método que executa um trecho de código se o bloco for passado como argumento e outro trecho caso não seja.  

 

6- Outra forma de receber blocos como parâmetro é utilizar o símbolo **&**

Ex:

```
def foo(name, &block)
  @name = name
  block.call
end

foo('Leonardo') { puts "Hellow #{@name}" }
```

Para executar um bloco recebido desta forma é necessário apenas utilizar o nome do bloco acompanhado pelo método **call.**

Outra dica importante é sempre deixar o **&nome_do_bloco** como último parâmetro a ser recebido pelo método

 

7- Você também pode passar um bloco que ocupa várias linhas como parâmetro

```
def foo(numbers, &block)
  if block_given?
    numbers.each do |key, value|
      block.call(key, value)
    end
  end
end

numbers = { 2 => 2, 3 => 3, 4 => 4 }


foo(numbers) do |key, value|
  puts "#{key} * #{value} = #{key * value}"
  puts "#{key} + #{value} = #{key + value}"
  puts "---"
end
```

Ao chamar o bloco  você passou os parâmetros que ele precisa para ser executado