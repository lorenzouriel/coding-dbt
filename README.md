# Coding DBT 
This repository contains my DBT (Data Build Tool) projects and experiments. It showcases different stages of working with the **Northwind** dataset, from initial exploration to deployment and testing.

## Projects
- **northwind-project-kickstarter**  
  Initial setup and experimentation with DBT models for the Northwind dataset.

- **northwind-project**  
  Main project with completed DBT models, transformations, and analytics workflows.

- **northwind-project-deploy-and-docs**  
  Deployment-ready version of the project, including DBT documentation generation and deployment configurations.

- **northwind-project-tests**  
  Automated tests, validations, and quality checks for the DBT models.

## Getting Started
1. Clone the repository:  
```bash
git clone https://github.com/lorenzouriel/coding-dbt.git
```

2. Navigate to a project folder, e.g., `northwind-project`:
```bash
cd northwind-project
```

3. Install dependencies (if required) and run DBT commands:
```bash
pip install dbt-postgres
dbt run
dbt test
dbt docs generate
dbt docs serve
```

## Technologies Used
* [DBT](https://www.getdbt.com/)
* SQL
* Data Warehousing Concepts

## Structure
```bash
coding-dbt/
│
├─ northwind-project-kickstarter/
├─ northwind-project/
├─ northwind-project-deploy-and-docs/
└─ northwind-project-tests/
```
