print ("Escreva um texto: ")
texto = gets.chomp.to_s

File.open( "/tmp/texto.txt", "w") do |f|
  f << texto
end

system 'cat /tmp/texto.txt'