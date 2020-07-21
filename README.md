## ALGAMONEY API
- Backend - Curso Fullstack Angular e Spring Boot

## Tecnologias
- Ambiente de desenvolvimento (IDE): [Spring Tool Suite 3](https://github.com/spring-projects/toolsuite-distribution/wiki/Spring-Tool-Suite-3) Version: 3.9.11.RELEASE
- Linguagem de programação: [Java 8](https://www.java.com/pt_BR/download/faq/java8.xml)
- Banco de dados: [PostgreSQL 12](https://www.postgresql.org/docs/12/textsearch-configuration.html) 
- Framework: [SpringBoot](https://spring.io/projects/spring-boot) 2.2.6
- Controle de dependências: [Maven](https://maven.apache.org/)

## Padrões
- [RESTful](https://blog.caelum.com.br/rest-principios-e-boas-praticas/)

## Instalação
- Faça o download e a instalação do [Java](https://www.java.com/pt_BR/download/)
- Instale o [Maven](http://www.matera.com/blog/post/tutorial-instalacao-apache-maven-configuracao-eclipse)

## Executar a aplicação
- Faça o Download do repositório no diretório desejado através do comando 'git clone https://github.com/manoelleandromanoel/lm-algamoney-api.git'
- Abra o prompt de comando (cmd/PowerShell) e rode o comando: mvn clean package
- Posteriormente rode o comando: java -jar target/lm-algamoney-api-1.0.jar
- Para efetuar os testes da aplicação, foi utilizado a ferramenta [Postman](https://www.postman.com/). Caso queira facilitar os testes basta importar no Postman o arquivo que está no diretório: 'docs/LM Candidatos API.postman_collection.json'

## ROTAS DA API

### Pessoas
Lista de Pessoas 
- **@GET** http://localhost:8080/pessoas/

Busca uma pessoa pelo ID
- **@GET** http://localhost:8080/pessoas/{id}

Adiciona uma pessoa
- **@POST** http://localhost:8080/pessoas/
Com o Json de exemplo:  { "nome" : "José Maria", "ativo" : false }

Atualiza uma pessoa
- **@PUT** http://localhost:8080/pessoas/{id}
Com o Json de exemplo: { "nome": "José Maria Marin DA SILVA", "ativo": true, "endereco": { "logradouro": "Avenida Presidente Vargas", "numero": "357", "cidade": "Ribeirão Preto", "estado": "SP" } }

Atualiza apenas a propriedade Ativo de pessoa
- **@PUT** http://localhost:8080/pessoas/{id}/ativo
Com o Body de exemplo: true

Deleta uma pessoa pelo ID
- **@DELETE** http://localhost:8080/pessoas/{id}


### Categorias
Lista de Categorias

### Lançamentos
Lista de Lançamentos

### Token
Token
