#### **Regex**

Abreviatura de **Regular Expressions **(Expressões Regulares), regex é uma sequência de caracteres especiais que nos ajudam a identificar (e selecionar) padrões de caracteres em strings.

#### **3 Maneiras de criar um Regex**

1 – Utilizando o formato **/…/**

**ex:**

```
/expressao/
```

Geralmente a mais utilizada.

**2 – **Através do formato **%r{…}**

**Ex:**

```
%r{expressao}
```

3 – Utilizando um Construtor através do Regexp.new(‘…’)

**Ex:**

```
Regexp.new('expressao')
```



#### Casamento de Padrões

É um ato que verifica a presença de padrões em uma cadeia de caracteres.

Pode ser realizado através do operador **=~** ou do método **match**

### 

### **Operador =~**

1- O operador **=~** retorna o offset, ou seja, a distância entre o começo da string até o local onde ocorre o casamento de padrão especificado na expressão.

```
/by/ =~ 'ruby'
```

2- A mesma comparação também pode ser realizada iniciando pela string.

```
'ruby' =~ /by/
```

3- Quando não ocorre o casamento de padrão, o resultado é **nulo**

```
'ruby' =~ /rails/
```



### Método match

1- Retorna um objeto do tipo **MatchData, **contendo todos os resultados do casamento de padrão.

```
phrase = "Hellow, how are you?"

match_data = /how/.match(phrase)
```

2- Em um objeto do tipo MatchData você pode, por exemplo, acessar o que vem antes do casamento através do método **pre_match**

```
match_data.pre_match
```

3- Ou acessar o que vem depois do casamento com **post_match**

```
match_data.post_match
```



### Metacharacters and Escapes

Os símbolos **(, ), [, ], {, }, ., ?, +, \*,****  **são **metacharacters. **Eles possuem um significado quando utilizados em expressões regulares.

1- Caso o padrão que você procura seja um **metacharacter**, utilize o símbolo de **escap**e **\ **para realizar a busca

```
/\?/.match('Tudo bem?')

/bem\!\!\!/.match('Muito bem!!!')
```



### **Character Classes**

É uma lista que informa quais caracteres devem aparecer em um ponto do casamento.

1- Uma **character class** é delimitada por colchetes [, ]

```
/[t]exto/.match('texto começando com t')
```

2- Você pode especificar um **range** com o símbolo **–**

```
/[1-5]/.match('123')
```

Assim, é procurado um padrão onde o primeiro número pode ser 1, 2, 3, 4 ou 5

3- Note que o casamento também ocorre em uma string que começa com o número 2

```
/[1-5]/.match('223')
```

4- O range pode ser utilizado para letras

```
/[a-z]/.match('Oi')
```

Existem alguns **metacharacters** que se comportam como **character classes**

5- Por exemplo, o **metacharacter** **\d** verifica o padrão [0-9]

```
/A\d/.match('A4')
```



### **Repetition**

É possível definir a repetição de um mesmo padrão, evitando escrever a mesma coisa diversas vezes.

1- Por exemplo, verifique o casamento de padrão em uma etiqueta que começa com uma letra e 3 números.

```
"A343".match(/[A-Z]\d{3}/)
```

Ao em vez de digitar \d\d\d você pode escrever **\d{3}**

2- Verifique se uma letra foi escrita mantendo o padrão de repetição entre três ou mais vezes

```
"BBB AAAA".match(/A{3,}/)
```

A vírgula em **{3, }** informa que a repetição pode ocorrer 3 ou mais vezes

Conclui-se que a Expressão Regular é uma ferramenta muito poderosa, capaz de identificar qualquer padrão em uma string. Caso se interesse pelo tema, recomendo fortemente que leia esta [documentação](https://ruby-doc.org/core-2.5.1/doc/regexp_rdoc.html).