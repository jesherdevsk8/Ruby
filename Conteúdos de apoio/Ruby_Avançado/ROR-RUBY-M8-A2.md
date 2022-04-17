#### **Lambda**

Bastante similar aos blocos com as seguintes diferenças:

 

**Sintaxe**

Uma lambda é iniciada com a palavra **lambda.**

1- Crie um arquivo chamado **lambda.rb **com o seguinte código

```
first_lambda = lambda { puts "my first lambda"}
first_lambda.call
```

Ela pode ser guardada em uma variável para ser chamada futuramente com o método **call**.

2- Você pode abreviar a declaração de uma lambda da seguinte forma

```
first_lambda = -> { puts "my first lambda"}
first_lambda.call
```

3- Uma lambda também pode receber parâmetros para sua execução

```
first_lambda = -> (names){ names.each { |name |puts name} }

names = ["joão", "maria", "pedro"]

first_lambda.call(names)
```

Perceba que você executou um block dentro de uma lambda

 

4- Em lambdas que ocupam várias linhas, não declare a lambda de forma abreviada e utilize o **do..end**

```
my_lambda = lambda do |numbers|
  index = 0
  puts 'Número atual + Próximo número'
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index += 1
  end
end

numbers = [1, 2, 3, 4]

my_lambda.call(numbers)
```

**Argumentos**

1- Diferente de blocks, você pode passar mais de uma lambda como argumentos de um método.

```
def foo(first_lambda, second_lambda)
  first_lambda.call
  second_lambda.call
end

first_lambda = lambda { puts "my first lambda"}
second_lambda = lambda { puts "my second lambda"}

foo(first_lambda, second_lambda)
```

