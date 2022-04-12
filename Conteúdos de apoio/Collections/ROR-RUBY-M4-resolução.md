## **Missões especiais - Resolução**

### **Código da missão 1**

```
array = []

i = 1

3.times do
  print "Digite o #{i}º número: "
  array.push gets.chomp.to_i
  i += 1
end

array.each do |a|
  result = a ** 2
  puts "O resultado do número #{a} elevado a segunda potência é #{result}"
end
```



### **Código da missão 2**

```
hash = {}

3.times do 
  print 'Informe uma chave: '
  key = gets.chomp
 
  print 'Informe seu valor: '
  value = gets.chomp
 
  hash[key] = value
end

hash.each do |k, v|
  puts "Uma das chaves é #{k} e o seu valor é #{v}"
end
```



### **Código da missão 3**

```
numbers = {a: 10, b: 30, c: 20, d: 25, e: 15}

maior_numero = 0
result = []

numbers.each do |key, value|
 if value > maior_numero
   maior_numero = value
   result = [key, value]    
 end
end

puts "O maior número é o da chave #{result[0]} com o valor #{result[1]}"
```

