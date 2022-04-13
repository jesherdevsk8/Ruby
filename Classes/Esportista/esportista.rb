class Esportista
  def initialize(time = 'Corinthians', jogador = 'Guerrero', goleiro = 'Cássio')
    @time = time
    @jogador = jogador
    @goleiro = goleiro
  end
  def competir
    puts "Participou do Mundial de clubes"
  end
end

class JogadorDeFutebol < Esportista
  def esportista
    puts "O Jogador de futebol #{@jogador}"
  end
  
  def competir
    super
    puts "Fez gol no jogo"
  end

  def equipe
    puts "Atuou na competição pela equipe do #{@time}"
  end
end

class Goleiro < Esportista
  def esportista
    puts "\nO Goleiro #{@goleiro}"
  end

  def competir
    super
    puts "Fez várias defesas dificeis na partida"
  end

  def equipe
    puts "E foi campeão pela equipe do #{@time} naquela ocasião"
  end
end

breiba = [JogadorDeFutebol.new, Goleiro.new]
# Chamando o método correr para qualquer Esportista
breiba.each do |e|
  e.esportista
  e.competir
  e.equipe
end
