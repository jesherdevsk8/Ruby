#### **Modules – Mixins**

Em uma aula passada você viu o uso de herança para que uma classe herde características de outra, porém, de uma forma onde a herança sempre era única. 

Nessa aula você verá que é possível incluir o código de um módulo em outros locais e além disso, essa forma de compartilhamento te permitirá definir heranças multiplas para uma classe. Para melhor entendimento, veja isso na prática a seguir.

1- Crie um programa chamado mixins.rb e coloque nele:

```
module ImpressaoDecorada
    def imprimir text
        decoracao = '#' * 100
        puts decoracao
        puts text
        puts decoracao
    end
end

module Pernas
    include ImpressaoDecorada
    
    def chute_frontal
        imprimir 'Chute Frontal'
    end
    
    def chute_lateral
      imprimir 'Chute Lateral'
    end
end

module Bracos
    include ImpressaoDecorada
    
    def jab_de_direita
        imprimir 'Jab de direita'
    end
    
    def jab_de_esquerda
        imprimir 'Jab de esquerda'
    end
    
    def gancho
      imprimir 'Gancho'
    end
end

class LutadorMuayThai
    include Pernas
    include Bracos
end

class LutadorBoxe
    include Bracos
end

lutadorx = LutadorMuayThai.new
lutadorx.chute_frontal
lutadorx.jab_de_direita

lutadory = LutadorBoxe.new
lutadory.jab_de_esquerda
```

2 – Execute o programa rodando:

```
ruby mixins.rb
```

Nós criamos um module ImpressaoDecorada e incluimos ele nos outros dois modules (pernas e braços), depois incluimos estes últimos dois modules nas classes LutadorX e LutadorY.