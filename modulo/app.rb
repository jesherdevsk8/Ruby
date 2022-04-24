require_relative 'pagamento'

include Pagamento::Master


print "Digite a bandeira do cartão: "
b = gets.chomp.upcase

print "Digite a número do cartão: "
n = gets.chomp.to_i

print "Digite a valor da compra: "
v = gets.chomp.to_f

Pagamento::Master::pagar(b, n, v)
