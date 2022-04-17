## **Missões especiais - Resolução**

**Missão 1**

```
lambda_capitalize = -> (name) { puts name.capitalize }

def capitalize_name(lambda_capitalize)
  lambda_capitalize.call('leonardo')
  lambda_capitalize.call('jose')
end

capitalize_name(lambda_capitalize)
```



**Missão 2**

```
module Person
  class Juridic
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end

    def add
      puts 'Pessoa Jurídica Adicionada'
      puts "nome: #{@name}"
      puts "cnpj: #{@cnpj}"
    end
  end

  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      puts 'Pessoa Física Adicionada'
      puts "nome: #{@name}"
      puts "cpf: #{@cpf}"
    end
  end
end

Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
Person::Physical.new('José Almeida', '425.123.123-123').add
```





