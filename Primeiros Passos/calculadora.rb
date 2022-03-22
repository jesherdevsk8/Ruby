puts "Calculadora"
puts "-----------"

puts "Escolha a operacao!"
puts "1 Adicao"
puts "2 Subtracao"
puts "3 Divisao"
puts "4 Multiplicacao"
puts ""

print "Escolha uma opção: "
operacao = gets.chomp().to_i

print "Digite um numero: "
n1 = gets.chomp().to_f

print "Digite o segundo numero:"
n2 = gets.chomp().to_f

if operacao == 1
	sum = n1 + n2
	puts "Resultado #{n1} + #{n2} = #{sum}"
elsif operacao == 2
	menos = (n1 - n2) * -1 
	puts "Resultado #{n1} - #{n2} = #{menos}"
elsif operacao == 3
	if n2 != 0
		div = n1 / n2
		puts "Resultado #{n1} / #{n2} = #{div.round(2)}"
	else
		puts "Divisao Invalida! Numero nao pode ser dividido por 0!"
	end
elsif operacao == 4
	multi = n1 * n2
	puts "Resultado #{n1} x #{n2} = #{multi}"
else 
	puts "Opção inválida.."
end