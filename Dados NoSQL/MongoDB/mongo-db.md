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
  
Faça a instalação do **MongoDB** e deixe habilitado o **MongoDB Compass**.
Faça a instalação também do **Mongo Shell**

O MongoDB Compass é uma GUI poderosa para consultar, agregar e analisar seus dados do MongoDB em um ambiente visual.

[Download MongoDB](https://www.mongodb.com/try/download/community)

[Download MongoDB Shell](https://www.mongodb.com/try/download/shell)

[Database Methods](https://www.mongodb.com/docs/manual/reference/method/js-database/)

[mongosh Methods](https://www.mongodb.com/docs/v7.0/reference/method/)

[Query and Projection Operators](https://www.mongodb.com/docs/v7.0/reference/operator/query/)

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

Inserir vários documentos ao mesmo tempo na em uma coleção
```
db.collection.insertMany([])
```

Inserir um único documento por vez em uma coleção
```
db.collection.insertOne()
```

Realizamos consultas

QUERY: especificamos a condição que os nossos documentos devem atender para serem retornados na nossa consulta.

PROJECTION: especificamos quais campos devem ou não ser retornados na nossa consulta.
```
db.collection.find(query, projection)
```

Atualiza um documento por vez
```
db.collection.updateOne()
```

Atualiza vários documentos ao mesmo tempo
```
db.collection.updateMany()
```

Remove um documento por vez
```
db.collection.updateOne()
```

Remove vários documentos ao mesmo tempo
```
db.collection.deleteMany()
```





## Query Selectors

| Nome  | Descrição |
| ------| ----------|
| $eq   | Corresponde a valores que são iguais a um valor especificado.|
| $gt   | Corresponde a valores maiores que um valor especificado.     |
| $gte  | Corresponde a valores maiores ou iguais a um valor especificado.|
| $in   | Corresponde a qualquer um dos valores especificados em uma matriz.|
| $lt   | Corresponde a valores menores que um valor especificado.|
| $lte  | Corresponde a valores menores ou iguais a um valor especificado.|
| $ne   |Corresponde a todos os valores que não são iguais a um valor especificado.|
| $nin  |Não corresponde a nenhum dos valores especificados em uma matriz.|


## MongoDB Compass
MongoDB Compass, que é uma GUI - Graphical User Interface (Interface Gráfica do Usuário) poderosa para consultar, agregar e analisar seus dados do MongoDB em um ambiente visual. Para que o banco de dados exiba no MongoDB Compass ele precisa conter dados/coleções.

O MongoDB armazena seus registros com documentos BSON. O BSON é uma representação binária de documentos JSON. Um ponto interessante, é que o BSON trabalha com mais tipos de dados que o próprio JSON. A estrutura interna com a qual o MongoDB organiza seus registros é composta por pares de chave e valor.

## Tipos de dados que o MongoDB armazena

**NULL:** armazena valores nulos;

**Boolean:** pode armazenar valores true ou falso;

**Number:** número com sinal que pode ter uma notação com E exponencial;

**Inteiro:** pode armazenar o tipo de dados inteiro em duas formas, inteiro assinado de 32 bits e inteiro assinado de 64 bits;

**String:** uma sequência de um ou mais caracteres Unicode;

**Object:** um array não ordenado com itens do tipo chave/valor, também conhecidos como documentos aninhados;

**Array:** armazena uma lista ordenada de qualquer tipo, criada usando colchetes e com cada elemento separado por vírgulas;

**ObjectId:** identificador único de um registro do MongoDB;

**Date():** retorna a data atual em formato de string; e

**New Date()** e **ISODate():** retornam um objeto de data.

## Consultas no Compass
**FILTER:** utilizado para especificar qual será a condição que os documentos devem atender para serem retornados na busca.

**PROJECT:** utilizado para especificar quais campos serão ou não retornados na consulta.

- Ao Informar o nome do campo e informar 0, todos os campos, exceto os campos especificados no campo project, são retornados.Se o campo receber o valor de 1, ele será retornado na consulta. O campo _id é retornado por padrão, a menos que este seja especificado no campo project e definido como 0.

**SORT:** especifica a ordem de classificação dos documentos retornados.

- Para especificar a ordem crescente de um campo, defina o campo como 1.
- Para especificar a ordem decrescente de um campo, defina o campo como -1.
  
**MAX TIME MS:** define o limite de tempo cumulativo em milissegundos para processar as operações da barra de consulta. Se o limite de tempo for atingido antes da conclusão da operação, o Compass interrompe a operação.

**COLLATION:** utilizado para especificar regras específicas do idioma para comparação de textos, como regras para letras maiúsculas ou minúsculas, acentos, entre outros.

**SKIP:** especifica quantos documentos devem ser ignorados antes de retornar o conjunto de resultados.

**LIMIT:** especifica o número máximo de documentos a serem retornados.

