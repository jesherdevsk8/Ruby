### **Array**

Existem várias maneiras de manipular arrays. Abaixo encontram-se algumas muito úteis para todo programador.

**Criando um Array**

1- Crie um array vazio.

```
estados = []
```

Collections podem ter zero ou mais elementos.

**Adicionando itens**

1- Insira um novo item ao array **estados**.

```
estados.push('Espírito Santo')
```

O push sempre irá adicionar itens de forma sequencial.

2- Também é possível inserir vários elementos de uma só vez.

```
estados.push('Minas Gerais', 'Rio de Janeiro', 'São Paulo')
```



3- Veja o array **estados** com a instrução

```
puts estados
```



4- Para manter nossa coleção organizada em ordem alfabética ao inserir os itens ‘Acre’ e ‘Amapá’, devemos especificar que eles ocuparão as primeiras posições do array. Para isso contamos com o **insert**.

```
estados.insert(0, 'Acre', 'Amapá')
```



5- Exiba o array **estados**

```
puts estados 
```

 

**Acessando elementos**

Como já vimos na segunda aula, o item de um array pode ser acessado pelo valor de seu index.

1- Recupere o segundo elemento do array **estados**

```
estados[1]
```



2- Você também pode acessar índices através de intervalos

```
estados[2..5]
```

Retorna os itens dos índices 2, 3, 4 e 5

 

Utilizando números negativos conseguimos recuperar elementos a partir do ultimo item do array, de forma regressiva. O número -1 representa o ultimo elemento.

3- Adquira o penultimo elemento de **estados**

```
estados[-2]
```



4- Também funciona com intervalos

```
estados[-3..-1]
```



5- Uma forma muito intuitiva e natural de recuperar o primeiro item é usar **first**

```
estados.first
```



**Obtendo informações**

1- Para saber a quantidade de itens em um Array você pode utilizar qualquer uma destas duas instruções

```
estados.count
estados.length
```



2- Descubra se o array está vazio

```
estados.empty?
```



3- Verifique se um item específico está presente

```
estados.include?('São Paulo')
```

Igual ao empty, também resulta um valor verdadeiro ou falso



**Excluindo elementos**

1- Remova um item através de seu índice

```
estados.delete_at(2)
```



2- Exclua o ultimo item do array **estados**

```
estados.pop
```



3- Para excluir o primeiro item faça

```
estados.shift
```

