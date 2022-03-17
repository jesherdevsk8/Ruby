def calcular

	print "Insira um número: "
	num = gets.chomp.to_i


	11.times{|i| puts"#{num} x #{i} = #{num * i}"}
	return unless num >= 11 #A menos quê, num for maior ou igual a 11, faça!
		
	puts "Valor inválido!!!\nPara tabuada digite um valor menor que 11"

end
