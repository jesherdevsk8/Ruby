# Upload de Arquivos com Active Storage



## Active Storage

É uma ferramenta que vem por padrão em um projeto Ruby on Rails visando facilitar o upload de arquivos  para serviços de armazenamento em nuvem como por exemplo o Amazon S3, Google Cloud Storage ou Microsoft Azure Storage. Além disso, ela também inclui um serviço de armazenamento local voltado para o upload de arquivos nos ambientes de teste e desenvolvimento.



## Configurando o Active Storage

1- Abra o terminal e navegue até o local onde está localizado o projeto **blog**



2- Para gerar a configuração inicial do **Active Storage** rode o seguitne comando

```
rails active_storage:install
```



3- O comando anterior gerou uma migration para criar as tabelas que gerenciam onde os arquivos estão salvos. Pois então, execute a migração no banco de dados através do seguinte comando.

```
rails db:migrate
```



Pronto! O Active Storage já está configurado e agora basta voce acompanhar a próxima aula para saber como utilizá-lo.