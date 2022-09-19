#!/usr/bin/env ruby
while true
  print "Digite um parentesco "
  parentesco = gets.chomp.to_s.downcase

  case parentesco
    when 'neto'
      puts "digitou neto"
    when 'conjuge'
      puts "digitou conjuge"
    when 'filho'
      puts "digitou filho"
    when 'pai'
      puts 'digitou pai'
    when 'sair'
      exit
    else
      puts "DIGITOU NADA"
  end
end
