# dbt-core-northwind-project

### 1. Clonar o Repositório
Primeiro, clone este repositório para o seu ambiente local usando Git. Abra um terminal e execute o seguinte comando:
```sh
git clone git@github.com:lvgalvao/dbt-core-northwind-project.git
cd dbt-core-northwind-project
```

### 2. Executar os Contêineres Docker
Com o Docker instalado, navegue até o diretório do projeto clonado e execute o seguinte comando para iniciar os contêineres:
```sh
docker-compose up --build
```
Isso iniciará os contêineres necessários: PostgreSQL, pgAdmin, dbt-core.

### 3. Acessar o pgAdmin para visualizar o seu banco
Para acessar o pgAdmin e visualizar os dados, abra seu navegador e vá para:
- URL: `http://localhost:5050/browser/`

Use as seguintes credenciais para se conectar ao banco de dados:
- **Host**: `db`
- **Porta**: `5432`
- **Nome do Banco**: `northwind`
- **Usuário**: `postgres`
- **Senha**: `postgres`

### 4. Rode agora o primeiro comando dbt e veja tudo isso em segundos 
Abra um novo terminal e execute:
```sh
dbt run
```

Esse comando executará todas as transformações definidas nos modelos dbt e você verá a saída dos resultados no terminal.

### 5. Gerar e Acessar a Documentação dbt
Para gerar e acessar a documentação do dbt, execute os seguintes comandos no ambiente local:
```bash
python -m venv .venv
source .venv/Scripts/activate
pip install -r requirements.txt 
```

```sh
dbt docs generate
dbt docs serve --port 8080
```

Abra seu navegador e vá para:
- URL: `http://localhost:8080`

Você verá a documentação interativa gerada pelo dbt.