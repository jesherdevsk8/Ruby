# Configuração de Banco de Dados

Na maioria das aplicações Ruby on Rails se faz necessário uma conexão com banco de dados para persistir informações de negócio. Por isso quando você gera um novo projeto o Rails cria um arquivo para configurar como deve ser feita está conexão

1- Localize as configurações de conexão em `config/database.yml`



2- Veja que existe um comentário deixando claro que você precisa ter a gem do banco de dados relacional que vai utilizar instalada. 



3- Perceba que existe uma definição padrão, de desensolvimento, teste e produção



4- A definição padrão será compartilhada entre todas as outras configurações através da seguinte instrução:

```
<<: *default
```



5- Não é necessário alterar o banco de dados manualmente. Veja um exemplo de como fazer isso com o seguinte comando:

```
cd .. && rails new blog --database=mysql
```



6- Agora volte para a utilização do sqlite3 que já vem pronto para uso.

```
rails new blog --database=sqlite3
```

Observação:  Esse banco de dados é recomendado apenas para aplicações testes. Ele pode apresentar alguns problemas quando usado em produção.



7- Em uma aplicação real é interessante utilizar outro banco de dados e você pode encontrar como configurar alguns dos principais bancos relacionais através deste [link](https://guides.rubyonrails.org/configuring.html#configuring-a-database)