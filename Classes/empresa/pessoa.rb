class Pessoas
    def initialize ( nome:, cpf:, endereco:, cidade:, estado:, bairro: )
        @nome = nome
		@cpf = cpf
		@endereco = endereco
		@cidade = cidade
		@estado = estado
		@bairro = bairro
    end

    def Mostrar
        return %(Nome: #{@nome} \nCPF: #{@cpf} \nEndereço: #{@endereco} \nCidade: #{@cidade} \nEstado: #{@estado} \nBairro: #{@bairro})
    end

    def Json
        puts %({\n"Nome": "#{@nome}", \n"CPF": "#{@cpf}", \n"Endereço": "#{@endereco}"\n})
    end
end

class Fornecedores
    def initialize ( nome:, cnpj:, endereco:, cidade:, estado:, bairro: )
        @nome = nome
		@cnpj = cnpj
		@endereco = endereco
		@cidade = cidade
		@estado = estado
		@bairro = bairro
    end

    def MostrarTela
        return %(\nNome: #{@nome} \nCNPJ: #{@cnpj} \nEndereco: #{@endereco} \nCidade: #{@cidade} \nEstado: #{@estado} \nBairro: #{@bairro})
    end

    def JsonFornecedor
        puts %({\n"Nome": "#{@nome}", \n"CNPJ": "#{@cnpj}", \n"Endereço": "#{@endereco}"\n})
    end
end