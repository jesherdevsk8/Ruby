#!/usr/bin/env ruby

print "Digite uma idade "
idade = gets.chomp.to_i

case idade
when 0 .. 2
  puts "é um bebê"
when 3 .. 12
  puts "é uma criança"
when 13 .. 18
  puts "é um adolescente"
else
  puts "é adulto"
end
