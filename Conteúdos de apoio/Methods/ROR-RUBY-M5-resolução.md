## **Missões especiais - Resolução**

**Missão 1**

```ruby
def potencializar(base, expoente)
  base ** expoente
end

print 'Digite o número base: '
base = gets.chomp.to_i

print 'Digite o expoente: '
expoente = gets.chomp.to_i

potencia = potencializar(base, expoente)

puts "O número #{base} elevado a #{expoente} é #{potencia}"
```



**Missão 2**

Instale a gem

```
gem install cpf_cnpj
```

Código

```ruby
require "cpf_cnpj"

def check_cpf(cpf_number)
  if CPF.valid?(cpf_number)
    return "O cpf informado é valido"
  else
    return "O cpf informado é invalido"
  end
end

print 'Digite seu cpf: '
cpf_number = gets.chomp.to_i

result = check_cpf(cpf_number)

puts result
```

