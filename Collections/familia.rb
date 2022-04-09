familia = []

membro = 1

puts "1 - Adicionar"
puts "2 - Sair"

print "Escolha opção: "
opcao = gets.chomp.to_i

while opcao
	if opcao == 1
		print "Insira nome do #{membro}º membro familiar: "
		familia.push gets.chomp
		membro+=1
		if membro > 2
			print "Deseja Adicionar Mais Membros?[S/N] "
			add = gets.chomp.to_s.upcase
			
				if add == "S"
					print "Insira nome do #{membro}º membro familiar: "
					familia.push gets.chomp
					membro+=1
				elsif add != "S" && add != "N"
					puts "Opção não válida"
				else
					puts "Nossa Familia\n\n"

					familia_new = familia.map do |n|
						puts "Nome: #{n.swapcase}\n"
					end
					sleep 1
					puts "\nSaindo ....."
					exit
				end
		end
	elsif opcao == 2
		puts "Nome: #{familia}".swapcase
		puts "Saindo ....."
		exit
	else 
		puts "1 - Adicionar"
		puts "2 - Sair"

		print "Escolha opção: "
		opcao = gets.chomp.to_i
	end
end
