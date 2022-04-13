class Animal
  
  def pular
    puts 'Toing! tóim! bóim! póim!'
  end

  def dormir
    puts 'ZzZzzz'
  end

end

class Cachorro < Animal

  def latir
    puts 'Au AU'
  end

end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir