## **Iterações**

Agora, você será apresentado a três novas estruturas de repetição utilizadas para trabalhar com **collections**

### **Each**

Percorre uma coleção de forma parecida ao **for,** porém, não sobrescrevendo o valor de variáveis fora da estrutura de repetição.

##### **Array**

1- Adicione o seguinte código a um programa chamado **each_array.rb**

```
names = ['Joãozinho', 'Manoel', 'Juca']

name = 'Leonardo Rocha'

names.each do |name|
  puts name
end

puts name
```

Ao executar o programa perceba que não foi alterado o valor da  variável name, definida antes da estrutura de repetição.



##### **Hash**

1- Crie um arquivo chamado  **each_hash.rb **com o seguinte código

```
posicoes = {1 => 'Primeiro', 2 => 'Segundo', 3 => 'Terceiro'}

posicoes.each do |key, value|
  puts "key: #{key} value: #{value}"
end
```

Em cada vez que a estrutura percorre o hash, o elemento atual é representado por key e value.



### **Map**

Cria um array baseando-se em valores de outro array existente.



1- Crie um arquivo chamado **map.rb**

```ruby
array = [1, 2, 3, 4]

# \n é uma quebra de linha 
puts "\n Executando .map multiplicando cada item por 2"
# .map não altera o conteúdo do array original
new_array = array.map do |a| 
  a * 2
end

puts "\n Array Original"
puts " #{array}"

puts "\n Novo Array"
puts " #{new_array}"

puts "\n Executando .map! multiplicando cada item por 2"
# .map! força que o conteúdo do array original seja alterado
array.map! do |a| 
  a * 2
end

puts "\n Array Original"
puts " #{array}"
puts ''
```

Como vimos neste exemplo, podemos forçar que o array original seja alterado utilizando map!



### **Select**

Realiza uma seleção de elementos presentes em uma collection através de uma condição pré definida. Traz como resultado somente os valores que passam nesta condição.

##### **Array**

1- Crie um arquivo chamado **select_array.rb**

```
array = [1, 2, 3, 4, 5, 6]

selection = array.select do |a|
             a >= 4
           end

puts selection
```

A condição para que um item do array seja selecionado é que seu valor seja maior ou igual a 4.



##### **Hash**

1- Crie um arquivo chamado **select_hash.rb**

```
hash = {0 => 'zero', 1 => 'um', 2 => 'dois', 3 => 'tres'}

puts 'Selecionando keys com valor maior que 0'
selection_key = hash.select do |key, value|
                 key > 0
               end

puts selection_key
```

Veja que dentro de um Hash podemos fazer uma seleção por chave ou valor.