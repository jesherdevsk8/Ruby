## **Missões especiais - Resolução**

**Missão**

**produto.rb**

```
class Produto
  attr_accessor :nome, :preco
end
```



**mercado.rb**

```
class Mercado
  def initialize(produto, preco)
    @produto = produto
    @preco = preco
  end

  def comprar
    puts "Você comprou o produto #{@produto} no valor de #{@preco}"
  end
end
```



**app.rb**

```
require_relative 'produto'
require_relative 'mercado'

produto = Produto.new
produto.nome = 'Tomate'
produto.preco = 2.50

Mercado.new(produto.nome, produto.preco).comprar
```



