### **Hash**

A seguir veja exemplos importantíssimos sobre manipulação de Hashes

 

**Novo Hash**

1- Crie um hash vazio

```
capitais = Hash.new
```



2- Um Hash também pode ser iniciado com vários pares de chave-valor

```
capitais = { acre: 'Rio Branco', sao_paulo: 'São Paulo'}
```



**3- ** A chave de um Hash pode ser qualquer tipo de dado

```
hash = {1 => 'Chave do tipo inteiro', true => 'Chave do tipo booleano', [1,2,3] => 'Chave do tipo array'}
```



**Adicionando itens**

1- Adicione um novo item ao hash **estados**

```
capitais[:minas_gerais] = "Belo Horizonte"
```



2- Acesse a capital que acabamos de inserir utilizando sua chave

```
capitais[:minas_gerais]
```

De forma sucinta, a chave é o index de nossos itens



3- Para retornar todas as chaves de um hash

```
capitais.keys
```



4- Agora, todos os valores de um hash  

```
capitais.values
```



**Exclusão**

1- Remova um elemento chave-valor

```
capitais.delete(:acre)
```



2- Verifique se o Hash está vazio

```
capitais.empty?
```



