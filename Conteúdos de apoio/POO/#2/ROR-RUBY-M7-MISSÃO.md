#### **Missões especiais**

Para exercitar o conhecimento adquirido nesta etapa,  crie um projeto chamado Compras com a seguinte estrutura:

[![img](https://i1.wp.com/onebitcode.com/wp-content/uploads/2018/07/Captura-de-tela-de-2018-08-31-14-22-06.png?resize=300%2C139&ssl=1)](https://i1.wp.com/onebitcode.com/wp-content/uploads/2018/07/Captura-de-tela-de-2018-08-31-14-22-06.png?ssl=1)

Neste projeto você simulará o ato de escolher e comprar um produto em um mercado.

**Instruções do projeto:**  

1- No arquivo **produto.rb**, crie uma classe chamada **Produto** com os atributos: **nome** e **preço**.

2- No arquivo **mercado.rb **crie uma classe chamada **Mercado** que ao ser inicializada recebe como atributo um objeto da classe Produto.

3 – Dentro da classe, crie um método chamado **comprar **que imprime a seguinte frase **“Você comprou o produto #{@produto.nome} no valor de #{@produto.preco}”**  

4- No arquivo **app.rb **crie uma instância da classe **Produto** e adicione valores aos atributos **nome** e **preco**. Depois, inicie uma instância da classe **Mercado **passando um objeto produto como argumento e para finalizar execute o método comprar.