# Serviços Gratuitos da Faculdade

Sistema web para agendamento de serviços gratuitos oferecidos pela faculdade à comunidade, incluindo atendimento veterinário, psicológico e odontológico.

## 🎯 Objetivo

Resolver uma questão social importante, facilitando o acesso da comunidade aos serviços gratuitos oferecidos pela faculdade, com um sistema simples e eficiente de agendamento.

## 🚀 Tecnologias Utilizadas

- **Java EE**: Servlets e JSP
- **HTML5/CSS3**: Interface responsiva
- **Apache Tomcat**: Servidor de aplicação
- **Maven**: Gerenciamento de dependências

## 📋 Funcionalidades

### ✅ Implementadas
- Página inicial com apresentação dos serviços
- Formulário de agendamento dinâmico
- Processamento de dados via Servlet
- Confirmação de agendamento
- Design responsivo
- Campos específicos para cada tipo de serviço

### 🔄 Próximas Melhorias
- Integração com banco de dados
- Sistema de autenticação
- Painel administrativo
- Envio de emails de confirmação
- Validação de disponibilidade de horários

## 🏗️ Estrutura do Projeto

```
servicos-faculdade/
├── src/main/
│   ├── java/com/faculdade/servicos/
│   │   ├── AgendamentoServlet.java
│   │   └── Agendamento.java
│   └── webapp/
│       ├── css/style.css
│       ├── index.jsp
│       ├── agendamento.jsp
│       ├── confirmacao.jsp
│       └── WEB-INF/web.xml
├── pom.xml
└── README.md
```

## 🛠️ Como Executar

### Pré-requisitos
- Java 11 ou superior
- Apache Tomcat 9 ou superior
- Maven 3.6 ou superior

### Passos para Execução

1. **Clone ou baixe o projeto**
   ```bash
   # Se usando Git
   git clone [url-do-repositorio]
   cd servicos-faculdade
   ```

2. **Compile o projeto**
   ```bash
   mvn clean compile
   ```

3. **Gere o arquivo WAR**
   ```bash
   mvn package
   ```

4. **Deploy no Tomcat**
   - Copie o arquivo `target/servicos-faculdade.war` para a pasta `webapps` do Tomcat
   - Ou use o plugin do Maven:
   ```bash
   mvn tomcat7:run
   ```

5. **Acesse a aplicação**
   - Abra o navegador em: `http://localhost:8080/servicos-faculdade`

## 📱 Como Usar

1. **Página Inicial**: Visualize os serviços disponíveis
2. **Escolha o Serviço**: Clique em "Agendar Horário" no serviço desejado
3. **Preencha o Formulário**: Complete os dados pessoais e preferências
4. **Confirmação**: Receba o protocolo de agendamento

## 🎨 Serviços Disponíveis

### 🐾 Atendimento Veterinário
- Clínica Geral
- Vacinação
- Cirurgias
- Campos específicos: nome do animal, espécie

### 🧠 Atendimento Psicológico
- Terapia Individual
- Terapia Familiar
- Grupos de apoio

### 🦷 Atendimento Odontológico
- Limpeza
- Restaurações
- Ortodontia

## 🔧 Configuração de Desenvolvimento

### IDE Recomendada
- Eclipse IDE for Enterprise Java Developers
- IntelliJ IDEA Ultimate
- Visual Studio Code com extensões Java

### Configuração do Tomcat na IDE
1. Adicione o servidor Tomcat na IDE
2. Configure o projeto como Dynamic Web Project
3. Deploy automático habilitado

## 📊 Arquitetura

- **Modelo MVC**: Separação clara entre apresentação, lógica e dados
- **Servlets**: Controladores para processar requisições
- **JSP**: Views dinâmicas com HTML + Java
- **CSS**: Estilização responsiva

## 🤝 Contribuição

Este é um projeto acadêmico. Sugestões de melhorias são bem-vindas:

1. Integração com banco de dados (MySQL/PostgreSQL)
2. Sistema de notificações por email
3. Painel administrativo para gestão
4. API REST para integração mobile
5. Sistema de avaliação dos serviços

## 📄 Licença

Projeto acadêmico para fins educacionais.

---

**Desenvolvido para resolver questões sociais através da tecnologia! 🌟**