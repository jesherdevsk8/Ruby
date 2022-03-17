#!/usr/bin/env ruby

print "Insira um número: "
num = gets.chomp.to_i

11.times do |i|
	if num <= 10
		 puts "#{num} x #{i} = #{num * i}"
	else
		return puts "Valor inválido"
	end
end