# 🚀 Projeto de Modelagem de Dados Relacional com PostgreSQL e Jupyter

Este projeto tem como objetivo demonstrar na prática diferentes formas de modelagem de dados:

- Modelagem **normalizada** (3FN)
- Modelagem **desnormalizada**
- Modelagem em **Star Schema**
- Modelagem em **Snowflake Schema**

Usamos um dataset simulado de vendas para exemplificar os modelos, aplicando consultas em SQL diretamente em um ambiente PostgreSQL integrado com Jupyter Notebook via Docker.

---

## 🧱 Tecnologias Utilizadas

- 🐘 PostgreSQL
- 📊 Jupyter Notebook com `psycopg2` e `SQLAlchemy`
- 🐳 Docker e Docker Compose
- 🗂️ Pandas para manipulação de dados
- 🔎 SQL para modelagem, criação de schemas e consultas

---

## 📁 Estrutura do Repositório

```markdown
data-modeling/
├── dataset
│   ├── olist_customers_dataset.csv
│   ├── olist_geolocation_dataset_part1.csv
│   ├── olist_geolocation_dataset_part2.csv
│   ├── olist_order_items_dataset.csv
│   ├── olist_order_payments_dataset.csv
│   ├── olist_order_reviews_dataset.csv
│   ├── olist_orders_dataset.csv
│   ├── olist_products_dataset.csv
│   ├── olist_sellers_dataset.csv
│   └── product_category_name_translation.csv
├── diagrams
├── docker
│   ├── Dockerfile
│   └── requirements.txt
├── docker-compose.yml
├── docs
│   └── README.txt
├── models
│   ├── desnormalizacao
│   │   └── desnormalizacao.txt
│   ├── normalizacao
│   │   ├── categorias_produto.txt
│   │   ├── clientes.txt
│   │   ├── geolocalizacao.txt
│   │   ├── itens_pedido.txt
│   │   ├── pagamentos.txt
│   │   ├── pedidos.txt
│   │   ├── produtos.txt
│   │   ├── review_table.txt
│   │   └── vendedores.txt
│   └── star_schema
│       ├── dim_clientes.txt
│       ├── dim_produtos.txt
│       ├── dim_tempo.txt
│       ├── dim_vendedores.txt
│       └── fato_pedidos.txt
├── notebooks
│   ├── 01_normalizacao_3fn.ipynb
│   ├── 02_desnormalizacao.ipynb
│   └── 03_star_schema.ipynb
├── README.MD
└── tabelas_sql
    ├── desnormalizada
    │   └── tabela_desnormalizada.db
    ├── normalizada
    │   └── tabelas_normalizadas.db
    └── star_schema
        └── star_schema.db
```

---

## 🚀 Como executar o projeto

1. **Clone o repositório:**
```bash
git clone https://github.com/lobobranco96/data_modeling.git
cd data_modeling
```

2. **Suba o ambiente com Docker Compose:**
```bash
docker-compose up --build
```

3. **Acesse o Jupyter Notebook:**

Abra seu navegador e acesse:
```bash
 http://localhost:8888
```
--- 

## Objetivos

Demonstrar conceitos de modelagem de dados relacional.

Praticar modelagem com base em diferentes estruturas (3FN, Star, Snowflake).

Visualizar os impactos de performance e simplicidade nas consultas SQL.

--- 

## Explicação dos Modelos de Dados

Este documento tem como objetivo explicar os diferentes tipos de modelagem de dados aplicados neste projeto.

---

## Modelagem Normalizada (3FN)

A modelagem normalizada visa evitar redundâncias e anomalias. Ela separa os dados em múltiplas tabelas relacionadas.

**Vantagens:**
- Redução de redundância
- Consistência de dados
- Ideal para sistemas OLTP

**Desvantagens:**
- Consultas podem ficar mais complexas com muitos JOINs

---

## Modelagem Desnormalizada

A modelagem desnormalizada prioriza performance de leitura, agregando colunas que seriam separadas em tabelas distintas.

**Vantagens:**
- Consultas simples e rápidas
- Menor quantidade de JOINs

**Desvantagens:**
- Redundância de dados
- Maior chance de inconsistência

---

## Star Schema

Muito utilizado em Data Warehouses. A estrutura contém uma tabela fato central com tabelas dimensão diretamente ligadas a ela.

**Vantagens:**
- Simplicidade nas consultas analíticas
- Boa performance com grandes volumes

**Desvantagens:**
- Algumas redundâncias nas dimensões

---

## Snowflake Schema

Uma extensão do Star Schema, onde as dimensões também são normalizadas.

**Vantagens:**
- Mais organizado e flexível
- Reduz redundância nas dimensões

**Desvantagens:**
- Consultas mais complexas

---

## 🎯 Quando usar cada um?

| Tipo              | Ideal para                        |
|-------------------|-----------------------------------|
| Normalizado       | OLTP, sistemas transacionais      |
| Desnormalizado    | Dashboards rápidos, relatórios    |
| Star Schema       | BI e Data Warehouses simples      |
| Snowflake Schema  | BI mais complexo, multi dimensões |


