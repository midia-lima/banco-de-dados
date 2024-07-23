## O que é um Banco de Dados?
Um banco de dados é uma coleção sistemática de dados armazenada eletronicamente. Ele pode conter qualquer tipo de dados, incluindo palavras, números, imagens, vídeos e arquivos. Você pode usar um software chamado sistema de gerenciamento de banco de dados (SGBD) para armazenar, recuperar e editar dados.

Alguns exemplos de funcionalidades de um SGDB:
- Manter usuários.
- Manter banco de dados.
- Controle de acesso aos dados.
- Permitir mecanismos de backup e recuperação.
- Permitir importação e exportação de dados.
- Permitir o gerenciamento de acesso, armazenamento e gerenciamento de desempenho.
- Permite a realização de operações fundamentais como: inclusão, recuperação, atualização e exclusão de registros (linhas). Essas operações são conhecidas
também pelo termo CRUD (Create, Read, Update e Delete). Utilizamos a linguagem SQL para implementar um CRUD, através das instruções: Insert, Select, Update e Delete.

**Exemplos de SGBD:**
Oracle, DB2, SQL Server, MySQL, PostGreSQL, MongoDB


## Tipos de bancos de dados

**Bancos de dados relacionais**
- Padrão ANSI (American National Standards Institute)
- Linguagem SQL (Structured Query Language) 
- Armazenamento em tabelas<br>
Exemplos: MySQL, Oracle, SQL Server

**Bancos de dados NoSQL (não relacional)**
- Não seguem um padrão
- Tem sua própia linguagem de consulta
- Tem sua própia estrutura de armazenamento<br>
Exemplos: MongoDB, Cassandra

## Comparação entre Banco de dados Relacional X Dimensional

**Modelo Relacional**
- Modelo de Dados: Utiliza um modelo de dados baseado em tabelas (relações), onde os dados são organizados em linhas e colunas.
- Normalização: Os dados são frequentemente normalizados para eliminar redundâncias e garantir integridade referencial. Isso pode resultar em várias tabelas inter-relacionadas.
- Uso: OLTP (Online Transaction Processing) - Processamento de Transações On-Line

**Modelo Dimensional**
- Modelo de Dados: Utiliza um modelo de dados baseado em dimensões e fatos, onde os dados são organizados em tabelas de fatos (medidas) e tabelas de dimensões (contexto descritivo).
- Desnormalização: Os dados são frequentemente desnormalizados para otimizar consultas de leitura e melhorar o desempenho de relatórios e análises.
- Uso: Ideal para aplicações OLAP (Online Analytical Processing) - Processamento Analítico Online

## OLTP e OLAP

**OLTP (Online Transaction Processing) - Processamento de Transações On-Line**

OLTP (Online Transaction Processing) é uma categoria de sistemas de software que gerenciam transações comerciais através do processamento de dados em tempo real. Esses sistemas são projetados para realizar um grande número de transações pequenas e rápidas, que podem incluir inserções, atualizações, exclusões e consultas de dados. Alguns exemplos comuns de sistemas OLTP são os sistemas bancários, de reservas de passagens aéreas, de vendas online e de processamento de pagamentos.

Principais características do OLTP:
- Alta Confiabilidade: Garantir que as transações sejam processadas corretamente e de forma consistente.
- Rápido Tempo de Resposta: Fornecer respostas rápidas para consultas e atualizações.
- Baixa Latência: Minimizar o tempo de espera para os usuários.
- Alta Disponibilidade: Garantir que o sistema esteja disponível o tempo todo, com mínimo tempo de inatividade.
- Suporte a Múltiplos Usuários: Capacidade de lidar com muitos usuários simultaneamente.
  
Em resumo, OLTP é essencial para operações comerciais que requerem um processamento eficiente e confiável de transações em tempo real.


**OLAP (Online Analytical Processing) - Processamento Analítico Online**

OLAP (Online Analytical Processing) é uma categoria de sistemas de software que são projetados para permitir a análise rápida e eficiente de grandes volumes de dados, frequentemente usados para suporte à decisão empresarial. Diferente dos sistemas OLTP, que são orientados a transações, os sistemas OLAP são orientados a consultas complexas e análises de dados históricos.

Principais características do OLAP:

- Análise Multidimensional: Permite a visualização de dados em múltiplas dimensões (ex.: tempo, geografia, produto), facilitando a análise de dados de diferentes perspectivas.
- Consultas Complexas: Capacidade de realizar consultas complexas e agregações de dados.
- Agregação e Sumário de Dados: Suporte para operações como sumários, médias, contagens e outras formas de agregação de dados.
- Histórico de Dados: Utilização de grandes volumes de dados históricos para identificar tendências e padrões.
- Exploração Interativa de Dados: Ferramentas OLAP permitem que os usuários naveguem pelos dados, realizem drill-downs (detalhamento), roll-ups (resumo) e slicing (recortes de dados) para explorar e analisar informações.
  
Exemplos de uso de OLAP incluem análises de vendas, marketing, financeiro, gerenciamento de inventário, entre outros, onde a capacidade de explorar dados de forma flexível e rápida é essencial para a tomada de decisões informadas.

## Aplicações OLTP
- Contabilidade
- Contas a pagar
- Controle de estoque
- Folha de pagamento

## Aplicações OLAP
- Atendem consultas AD HOC
- Fornecem tendências
- Produzem comparações
- Produzem estimativas