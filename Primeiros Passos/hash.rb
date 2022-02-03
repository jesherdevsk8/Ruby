#!/usr/bin/env ruby
# Preenchendo uma hash simples

print "Digite o nome "
nome = gets.chomp.to_s
print "Digite sua idade "
idade = gets.chomp.to_i
print "Digite sua altura "
altura = gets.chomp.to_f

pessoa = {"Nome": nome, "Idade": idade, "Altura": altura}
puts
pessoa.each do |k,v| # k = keys, v = values
	puts "#{k}: #{v}"
end
