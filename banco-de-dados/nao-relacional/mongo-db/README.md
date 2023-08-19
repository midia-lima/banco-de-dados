## NoSQL

**O que é NoSQL?**
- Suprir as necessidades que o SQL não conseguia
- Permitir novos modelos de aplicação

Quais seriam as necessidade?<br>
Com o crescimento da internet temos:
- Maior quantidade de dados
- Mais recursos de armazenamentos
- Mais recursos de leitura de dados

**BD relacionais**
- Padrão ANSI
- Linguagem SQL
- Armazenamento em tabelas<br>
Exemplos: MySQL, Oracle, SQL Server

**BD não relacionais**
- Não seguem um padrão
- Tem sua própia linguagem de consulta
- Tem sua própia estrutura de armazenamento<br>
Exemplos: MongoDB, DynamoDB

## MongoDB
O MongoDB utiliza o formato de documentos que são armazenados dentro de coleções, essas coleções tem uma estrutura semelhante ao JSON e os esquemas não são fixos.

**Recursos do MongoDB**
- Documento: Reestruturação do banco de dados.
- Replicação: Cópias de banco de dados duplicadas em mais dois servidores.
- Cluster: Capacidade do MongoDB de ligar com uma grande quantidade de dados.
- Open Source
- Distribuição para Linux, Mac e Windows
- Possui duas versões: Community e Enterprise
- Possui a versão hospedada na nuvem, o MongoDB Atlas.
  

<br>

Faça a instalação do **MongoDB** e deixe habilitado o **MongoDB Compass**.
Faça a instalação também do **Mongo Shell**

O MongoDB Compass é uma GUI poderosa para consultar, agregar e analisar seus dados do MongoDB em um ambiente visual.

[Download MongoDB](https://www.mongodb.com/try/download/community)

[Download MongoDB Shell ](https://www.mongodb.com/try/download/shell)

Após as instalações abra o shell e execute os comandos.

```
mongosh -> nos conecta automaticamente ao MongoDB

show databases -> exibe os bancos de dados existentes
```

Criando um banco de dados novo
```
use <nome-do-banco>
```