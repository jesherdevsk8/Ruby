#Programinha para treinar métodos com parametros

# -- Cores
def colorir(text, color_code)
    "#{color_code}#{text}\e[0m"
end

def blue(text); colorir(text, "\e[36m"); end
def red(text); colorir(text, "\e[31m"); end
def green(text); colorir(text, "\e[32m"); end

def fale(nome, sobre_nome, idade)
    mostre = "Olá, você se chama #{nome} #{sobre_nome}\nE tem #{idade} anos de idade."
    puts "#{blue("#{mostre}")}"
end

# Execução
print "Diga teu nome: "
nome = gets.chomp.to_s.swapcase

print "Diga o Sobre Nome: "
sobre_nome = gets.chomp.to_s.swapcase

print "Diga sua idade: "
idade = gets.chomp.to_i

# -- carregando váriaveis para dentro do método
fale("#{nome}", "#{sobre_nome}", "#{idade}")


print "\nVocê está bem? [S/N] "
resposta = gets.chomp.to_s.upcase

sleep 0.5
puts "#{green('Quem bom!!, Fico feliz em saber... xD')}" if resposta == "S"
puts "#{red('Que pena!!, Desejo que fique bem logo... :(')}" if resposta == "N"
puts "Não válido!!" if resposta.nil? and resposta != "S" and resposta != "N"