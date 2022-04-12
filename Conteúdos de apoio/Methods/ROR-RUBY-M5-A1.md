#### **Métodos**

### **O que são?**

Método é uma forma de organizar funções específicas de um programa.  Caso necessário permite a reutilização de código, ou seja, evita escrever o mesmo código diversas vezes.

 

### **Trabalhando com métodos**

### **Como criar?**

1- Crie seu primeiro método em um arquivo chamado **method.rb**

```
def talk
 puts 'Olá, como você está?'
end

talk
```



Para definir um método utiliza-se a palavra reservada **def **seguida pelo nome do método. Depois é escrito um conjunto de expressões, e por fim, a palavra **end **determina o término do método.

Para executar um método basta apenas escrever o seu nome.  

 

### **Parâmetros**

1- Substitua o código de **method.rb** por

```
def talk(first_name, last_name)
 puts "Olá #{first_name} #{last_name}, como você está?"
end

first_name = 'Leonardo'
last_name = 'Scorza'

talk(first_name, last_name)
```

Um método pode depender de um ou mais parâmetros para realizar determinada tarefa.

O exemplo define um método que precisa do primeiro e segundo nome para exibir uma frase. Tendo ciência disso, deve-se passar dois argumentos toda a vez que o método talk for chamado.

 

2- Crie um arquivo chamado **transito.rb** com o código

```
def signal(color = 'vermelho')
 puts "O sinal está #{color}"
end

signal 

color = 'verde'
signal(color)
```

Definindo um valor padrão ao parâmetro, ele torna-se opcional.

Um método pode ser invocado mais de uma vez, em diferentes áreas do programa. Assim seu código está sendo reutilizado.

Quer mudar o código? Altere apenas o método!

 

### **Retorno**

1- Crie um arquivo chamado **return.rb**

```
def compare(a, b)
 a > b
end 

a = 1
b = 2

result = compare(a, b)

puts "O resultado da comparação é '#{result}'"
```

O retorno de um método ruby é sempre o resultado de sua última instrução.

