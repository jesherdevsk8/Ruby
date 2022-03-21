#!/usr/bin/env ruby

print "Digite o seu salário "
sal = gets.chomp.to_f

puts "Seu salário atualizado é: " + (sal * 1.10).to_s

if sal < 1200
	puts "Você ganha menos que um salário minimo"
elsif sal == 1200
	puts "Você ganha um salário minimo"
elsif sal > 1200 and sal <= 2000
	puts "Você ganha um pouco mais que um salário minimo"
elsif sal >= 2200
	puts "Você ganha dois salarios minimos ou mais"
end
