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

[Download MongoDB Shell](https://www.mongodb.com/try/download/shell)

[Database Methods](https://www.mongodb.com/docs/manual/reference/method/js-database/)

Após as instalações abra o shell e execute os comandos.

Nos conecta automaticamente ao MongoDB
```
mongosh
```

Exibe os bancos de dados existentes
```
show databases
```

Para criar ou selecionar um banco de dados
```
use <nome-do-banco>
```

Para criar uma coleção
```
db.createCollection("nome_da_coleção")
```

Para excluir uma coleção. Onde o texto collection deve ser substituído pelo nome da coleção que será excluída
```
db.collection.drop()
```

Para excluir um banco de dados
```
db.dropDatabase()
```

## MongoDB Compass
MongoDB Compass, que é uma GUI - Graphical User Interface (Interface Gráfica do Usuário) poderosa para consultar, agregar e analisar seus dados do MongoDB em um ambiente visual. Para que o banco de dados exiba no MongoDB Compass ele precisa conter dados/coleções.

