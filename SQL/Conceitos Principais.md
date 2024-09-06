## SQL (Structured Query Language)

É uma linguagem de programação padrão usada para gerenciar e manipular dados em bancos de dados relacionais. Os comandos SQL são separados por grupos: Os principais são:

- DDL (Data Definition Language) - Linguagem de Definição de Dados
- DML (Data Manipulation Language) - Linguagem de Manipulação de Dados
- DQL (Data Query Language) - Linguagem de Consulta de Dados
- DCL (Data Control Language) - Linguagem de Controle de Dados
- TCL (Transaction Control Language) - Linguagem de Controle de Transações

```sql
-- DDL (Data Definition Language) - Linguagem de Definição de Dados

-- CREATE TABLE: cria uma nova tabela
CREATE TABLE t_slv_autor (
  cd_autor           NUMBER(3) NOT NULL,
  nm_primeiro_autor  VARCHAR2(20) NOT NULL,
  nm_segundo_autor   VARCHAR2(40) NOT NULL
);

-- ALTER TABLE: altera uma tabela existente
ALTER TABLE t_slv_autor ADD CONSTRAINT pk_slv_autor PRIMARY KEY ( cd_autor );

-- DROP TABLE: exclui uma tabela
DROP TABLE t_slv_autor CASCADE CONSTRAINTS;

-- DML (Data Manipulation Language) - Linguagem de Manipulação de Dados

-- SELECT: consulta dados em uma ou mais tabelas
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, SEARCH_CONDITION
  FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'T_SLV_CATEGORIA';

-- INSERT INTO: insere novos registros em uma tabela
INSERT INTO T_SAK_DEPTO ( cd_depto, nm_depto, sg_depto ) VALUES (SQ_DEPTO.NEXTVAL, 'COMERCIAL', 'COM');
```
