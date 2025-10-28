# Storefront - Microserviço de Vitrine (DIO)

Este projeto faz parte do desafio **Arquitetura de Microsserviços com Spring Boot** da DIO.

O **Storefront** representa a vitrine do e-commerce, responsável por expor os produtos e se comunicar com o microserviço **Warehouse** (estoque), utilizando **RabbitMQ** para mensageria e **HTTP REST** para integração síncrona.

---

## Tecnologias Utilizadas
- Java 21  
- Spring Boot 3  
- Spring Web  
- Spring DevTools  
- Spring Data JPA (H2 para ambiente de dev)  
- RabbitMQ  
- Swagger / OpenAPI 3.1  
- Docker & Docker Compose  
- Gradle

---

## ⚙️ Como Executar

### 1. Subir os containers
Execute no terminal:

\`\`\`bash
docker compose up --build
\`\`\`

Isso irá subir o **RabbitMQ** (porta 15672) e o **Storefront** (porta 8081).

- Swagger UI: [http://localhost:8081/storefront/swagger-ui.html](http://localhost:8081/storefront/swagger-ui.html)  
- RabbitMQ Dashboard: [http://localhost:15672](http://localhost:15672)  
  > login: admin | senha: admin

---

## Estrutura de Configuração

| Arquivo | Descrição |
|----------|------------|
| **application.yml** | Configurações gerais do projeto |
| **application-dev.yml** | Profile de desenvolvimento |
| **docker-compose.yml** | Orquestração de containers RabbitMQ + app |
| **Dockerfile** | Build da imagem do microserviço |
| **start-dev.sh** | Script auxiliar para rodar com Gradle |
| **/config/** | Beans de configuração (AMQP, OpenAPI, WarehouseClient) |
| **/controller/** | Controladores REST |
| **/model/** | Entidades e DTOs |

---

## Endpoint de Teste

\`\`\`bash
GET http://localhost:8081/storefront/products/test
\`\`\`

Resposta esperada no log:
\`\`\`
Test endpoint for ProductController
\`\`\`

---

## Próximos Passos
- Criar o microserviço **Warehouse** e integrar via HTTP + RabbitMQ
- Publicar ambos no GitHub:
  - https://github.com/codedbyallan/storefront  
  - https://github.com/codedbyallan/warehouse

---

## Autor
**Allan Barbosa**  
[GitHub - codedbyallan](https://github.com/codedbyallan)  
[allan.barbosa@yahoo.com.br](mailto:allan.barbosa@yahoo.com.br)
