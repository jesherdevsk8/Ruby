#!/usr/bin/env ruby

puts "digite um numero: "
x = gets.to_i

#coloque 9 ou 14 para testar as condicionais
#x = 9
#x = 14
if x == 14 then
   puts "O valor de x é #{x}"
elsif x <= 10 and x != 14 then
   puts "x is 9"
else
   puts "I can't guess the number"
end

