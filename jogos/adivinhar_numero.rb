class AdivinharNumero
  attr_reader :numero
  attr_reader :venceu
  # attr_reader é um getter para os atributos
  # https://codingwithchopsticks.github.io/como-funcionam-os-getters-e-setters-no-ruby
  
  def initialize
    @numero = Random.rand(1..10)
    @venceu = false
  end

  def mensagem
    puts "Tente adivinha um número."
  end

  def tentar_adivinhar(numero = 0)
    if numero == @numero
      @venceu = true
      return "Você VENCEU!"
    elsif numero > @numero
      return "O número informado é muito alto..."
    else
      return "O número informado é muito baixo..."
    end
  end
end

jogo = AdivinharNumero.new
jogo.mensagem

# Usando until o loop continua enquanto o valor for falso
until jogo.venceu do
  print "Digite um número de 0 a 10: "
  numero = gets.to_i
  puts jogo.tentar_adivinhar(numero)
end