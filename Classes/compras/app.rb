require_relative 'produto'
require_relative 'mercado'

#---------------------
item = Produto.new
# setter
p1 = item.nome = "Sabonete"
p2 = item.preco = "2.54"

# getter
pegar = Mercado.new(p1, p2)
pegar.comprar