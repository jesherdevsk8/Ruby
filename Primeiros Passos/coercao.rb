#!/usr/bin/env ruby

puts "Digite o seu salário"
sal = gets.chomp.to_f

puts "Seu salário atualizado é: " + (sal * 1.10).to_s
