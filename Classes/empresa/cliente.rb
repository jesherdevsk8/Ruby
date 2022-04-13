require_relative "pessoa.rb"

class Cliente < Pessoas
	def initialize (nome:, cpf:, endereco:, cidade:, estado:, bairro:, limite:, prazo:)
		super(nome: nome, cpf: cpf, endereco: endereco, cidade: cidade, estado: estado, bairro: bairro)
		@limite = limite
		@prazo = prazo
	end
	
	def Mostrar
		puts %(\n#{super} \nLimite: #{@limite} \nPrazo: #{@prazo})
	end
end