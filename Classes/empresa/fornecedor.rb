require_relative "pessoa.rb"

class Fornecedor < Fornecedores
	def initialize (nome:, cnpj:, endereco:, cidade:, estado:, bairro:, entrega:, prazo:, comprador:)
		super(nome: nome, cnpj: cnpj, endereco: endereco, cidade: cidade, estado: estado, bairro: bairro)
		@entrega = entrega
		@prazo = prazo
		@comprador = comprador
	end

	def MostrarTela
		puts %(#{super} \nEntrega: #{@entrega} \nPrazo: #{@prazo} \nComprador: #{@comprador})
	end
end