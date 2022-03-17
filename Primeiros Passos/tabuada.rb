#!/usr/bin/env ruby

print "Insira um número: "
num = gets.chomp.to_i

result = 11.times{|i| puts"#{num} x #{i} = #{num * i}"} unless num >= 11 #A menos quê, num for maior ou igual a 11, faça!

if result.nil? 
	puts "Valor inválido!!!\nPara tabuada digite um valor menor que 11"
end