**Missão 1**

O ruby oferece um método chamado **capitalize **para tornar a primeira letra de uma string maiúscula.

Sabendo disso crie uma lambda que recebe um nome como parâmetro e o imprime com a primeira letra maiúscula. Esta lambda deverá ser salva dentro de uma variável que será passada como argumento de um método chamado **capitalize_name**.

Dentro deste método você chamará a lambda duas vezes, passando como parâmetro em cada uma delas um nome diferente.    



**Missão 2**

Crie um módulo chamado **Person **com as classes **Juridic** e **Physical**.

Ao executar a instrução

```
Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
```

Seu código deverá retornar

![img](https://i2.wp.com/onebitcode.com/wp-content/uploads/2018/07/n1.png?resize=345%2C102&ssl=1)

E com a instrução

```
Person::Physical.new('José Almeida', '425.123.123-123').add
```

Deverá retornar

![img](https://i1.wp.com/onebitcode.com/wp-content/uploads/2018/07/n2.png?resize=341%2C105&ssl=1)

**Missão 3**

Pesquisar o que é o Proc em Ruby e descobrir as diferenças entre ele e o Lambda