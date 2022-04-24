module Pagamento
  module Master # modulo dentro de um modulo
    def pagar(bandeira, numero, valor)
      puts "Pagando com o cartão #{bandeira} número #{numero}, o valor de R$#{valor} reais..."
    end
  end
end


# module Pagamento
#   def pagando
#     "pagando..."
#   end
# end
