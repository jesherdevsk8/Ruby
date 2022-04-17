## **Modules**

Um módulo é uma forma de agrupar classes, métodos e constantes. Ele é muito similar a classes, com a diferença de que você não consegue criar um objeto com ele pois ele não possui um construtor (new).

**Namespaces**

É uma forma de organizar o seu código e evitar colisões de recursos que possuem o mesmo nome. 

1- Crie um programa chamado **namespace_reverse_word.rb** e coloque nele:

```
module ReverseWorld
    def self.puts(text)
      Kernel::puts text.reverse.to_s
    end
end

ReverseWorld::puts 'O resultado é'
```

2 – Execute o programa rodando:

```
ruby namespace_reverse_word.rb
```

3- Crie um arquivo chamado **namespaces_player.rb** com o seguinte código

```
module VideoGame
  class Player
    def info
      puts 'Precisa de um bom condicionamento físico'
    end
  end
end

module Football
  class Player
    def info
      puts 'Precisa de coordenação motora'
    end
  end
end

Football::Player.info
VideoGame::Player.info
```

