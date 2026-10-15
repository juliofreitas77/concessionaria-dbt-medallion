# 🚗 Concessionária dbt Course — Arquitetura Medalhão com DuckDB & dbt

Este repositório contém a implementação de um pipeline de dados ponta a ponta utilizando **dbt Core** e **DuckDB**, desenvolvido durante o curso *"Aprenda dbt: Construa uma Arquitetura Medalhão do Zero 2026"* na Udemy. 

O projeto simula o ambiente analítico de uma rede de concessionárias de veículos, aplicando os princípios da **Arquitetura Medalhão** (Bronze, Silver e Gold) e servindo como portfólio de Engenharia de Dados.

---

## 📐 Arquitetura do Projeto

* **Bronze (Raw / Landing):** Ingestão e padronização dos dados de origem, aplicando conversões primárias e macros Jinja para sanitização de strings.
* **Silver (Intermediate):** *(Em desenvolvimento)* Limpeza avançada, deduplicação e modelagem incremental (`delete+insert`).
* **Gold (Marts / Analytics):** *(Em desenvolvimento)* Agregações de negócio estruturadas em Tabelas Fato, Dimensões e Marts para consumo de BI.

---

## 🛠️ Tecnologias Utilizadas

* **Python 3.11.5**: Ambiente de execução do projeto.
* **dbt-core (v1.7+)**: Framework para transformação e testes de dados em SQL.
* **dbt-duckdb (v1.7+)**: Adapter para execução OLAP em banco de dados DuckDB local.
* **DuckDB**: Engine analítico relacional de alto desempenho em memória.

---

## 📁 Estrutura do Repositório

concessionaria_dbt_course/
├── macros/              # Macros customizadas (ex: safe_trim, normalize_text)
├── models/              # Camadas da arquitetura
│   ├── bronze/          # Modelos da camada Bronze (tabelas de origem)
│   ├── silver/          # Modelos incrementais da camada Silver
│   └── gold/            # Tabelas fato, dimensões e marts
├── seeds/               # Arquivos CSV de referência (ex: segmentos de veículos)
├── tests/               # Testes genéricos e singulares de qualidade
├── dbt_project.yml      # Configuração global do projeto dbt
└── requirements.txt     # Dependências Python do projeto

---

## ⚙️ Como Configurar e Executar Localmente

### 1. Clonar o repositório
```bash
git clone [https://github.com/juliofreitas77/concessionaria-dbt-Medallion.git](https://github.com/juliofreitas77/concessionaria-dbt-Medallion.git)

cd concessionaria-dbt-Medallion