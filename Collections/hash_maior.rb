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