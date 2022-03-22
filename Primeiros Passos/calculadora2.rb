puts "Calculadora em ruby"
puts "-------------------\n"

puts "1 - Adição"
puts "2 - Subtração"
puts "3 - Multiplicação"
puts "4 - Divisão"
puts "5 - Sair"

print "Escolha uma opção: "
opcao = gets.chomp.to_f

while opcao != 5
	if opcao == 1
		print "Digite um valor: "
		num1 = gets.chomp.to_f
		print "Digite outro valor: "
		num2 = gets.chomp.to_f
		result = num1 + num2
		puts "#{num1} + #{num2} = #{result}"
		break
	elsif opcao == 2
		print "Digite um valor: "
		num1 = gets.chomp.to_f
		print "Digite outro valor: "
		num2 = gets.chomp.to_f
		result = num1 - num2
		puts "#{num1} - #{num2} = #{result}"
		break
	elsif opcao == 3
		print "Digite um valor: "
		num1 = gets.chomp.to_f
		print "Digite outro valor: "
		num2 = gets.chomp.to_f
		result = num1 * num2
		puts "#{num1} x #{num2} = #{result}"
		break
	elsif opcao == 4
		print "Digite um valor: "
		num1 = gets.chomp.to_f
		print "Digite outro valor: "
		num2 = gets.chomp.to_f
			if num1 != 0 and num2 != 0
				result = num1 / num2
				puts "#{num1} ÷ #{num2} = #{result.round(2)}"
			else 
				puts "Divisao Invalida! Numero nao pode ser dividido por 0!"
			end
		break
	else opcao.nil? || opcao > 5
		invalido = "Opção inválida...!"
		puts "#{invalido}"
		break
	end
end