require_relative "cliente.rb"
require_relative "fornecedor.rb"

# Forncedores
fornecedor1 = Fornecedor.new(nome: "Mendoza Distribuidora", cnpj: "11.223.765/0001-99",\
								endereco: "Av 14 de Setembro", cidade: "São Paulo", estado: "SP",\
								bairro: "Vila Olímpia", entrega: "10DD", prazo: "21DD", comprador: "Jesher Minelli Alves")

fornecedor2 = Fornecedor.new(nome: "Super Mercado Villa Real", cnpj: "87.883.342/0001-99",\
								endereco: "Av Padre Oliveira Filho", cidade: "Registro", estado: "SP",\
								bairro: "Centro", entrega: "10DD", prazo: "21DD", comprador: "Orivaldo Alves")

cliente1 = Cliente.new(nome: "Jesher Minelli Alves", cpf: "456.321.234-43", endereco: "Rua Espirito Santo nº 36",\
					   		cidade: "Altinópolis", estado: "SP", bairro: "Vila Maria", limite: "2000", prazo: "700")
											 
cliente2 = Cliente.new(nome: "Orivaldo Alves", cpf: "034.234.654-23", endereco: "Rua Voluntário Antonio de Campos nº 391",\
							cidade: "Altinópolis", estado: "SP", bairro: "Centro", limite: "4500", prazo: "700")											 


puts "\n---- Dados"
dados = [fornecedor1.MostrarTela, fornecedor2.MostrarTela, cliente1.Mostrar, cliente2.Mostrar]
dados.each

# puts "\n-------EMPRESA-------"							
# puts fornecedor1.MostrarTela
# puts "------------------------------"
# puts fornecedor2.MostrarTela

# puts "--------Clientes-------"
# puts cliente1.Mostrar
# puts "------------------------------"
# puts cliente2.Mostrar

# fornecedor1.JsonFornecedor
# puts "-------------------------------"
# cliente1.Json