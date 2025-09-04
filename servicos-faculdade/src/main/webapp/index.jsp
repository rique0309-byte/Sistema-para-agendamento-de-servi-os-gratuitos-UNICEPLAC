<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="pt-BR">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Serviços Gratuitos - Faculdade</title>
        <link rel="stylesheet" href="css/style-completo.css">
    </head>

    <body>
        <header>
            <div class="container">
                <h1>Serviços Gratuitos da Faculdade</h1>
                <p>Cuidando da comunidade com qualidade e dedicação</p>
            </div>
        </header>

        <main class="container">
            <section class="servicos">
                <h2>Nossos Serviços</h2>
                <div class="servicos-grid">
                    <div class="servico-card">
                        <h3>🐾 Atendimento Veterinário</h3>
                        <p>Cuidados completos para seu pet</p>
                        <div class="info">
                            <p><strong>Próxima ação:</strong>
                                <%= request.getAttribute("proximaVeterinario") !=null ?
                                    request.getAttribute("proximaVeterinario") : "15/01/2025" %>
                            </p>
                            <p><strong>Especialidades:</strong> Clínica Geral, Vacinação, Cirurgias</p>
                        </div>
                        <a href="agendamento.jsp?servico=veterinario" class="btn">Agendar Horário</a>
                    </div>

                    <div class="servico-card">
                        <h3>🧠 Atendimento Psicológico</h3>
                        <p>Apoio emocional e terapia</p>
                        <div class="info">
                            <p><strong>Próxima ação:</strong>
                                <%= request.getAttribute("proximaPsicologia") !=null ?
                                    request.getAttribute("proximaPsicologia") : "12/01/2025" %>
                            </p>
                            <p><strong>Especialidades:</strong> Terapia Individual, Familiar, Grupos</p>
                        </div>
                        <a href="agendamento.jsp?servico=psicologia" class="btn">Agendar Horário</a>
                    </div>

                    <div class="servico-card">
                        <h3>🦷 Atendimento Odontológico</h3>
                        <p>Saúde bucal para toda família</p>
                        <div class="info">
                            <p><strong>Próxima ação:</strong>
                                <%= request.getAttribute("proximaOdonto") !=null ? request.getAttribute("proximaOdonto")
                                    : "10/01/2025" %>
                            </p>
                            <p><strong>Especialidades:</strong> Limpeza, Restaurações, Ortodontia</p>
                        </div>
                        <a href="agendamento.jsp?servico=odontologia" class="btn">Agendar Horário</a>
                    </div>
                </div>
            </section>

            <section class="info-adicional">
                <h2>Como Funciona</h2>
                <div class="passos">
                    <div class="passo">
                        <span class="numero">1</span>
                        <p>Escolha o serviço desejado</p>
                    </div>
                    <div class="passo">
                        <span class="numero">2</span>
                        <p>Preencha o formulário de agendamento</p>
                    </div>
                    <div class="passo">
                        <span class="numero">3</span>
                        <p>Aguarde confirmação por email</p>
                    </div>
                </div>
            </section>

            <section class="contato">
                <h2>Informações de Contato</h2>
                <div class="contato-info">
                    <div class="contato-item">
                        <h4>📍 Endereço</h4>
                        <p>Rua da Faculdade, 123<br>Centro - Cidade/UF</p>
                    </div>
                    <div class="contato-item">
                        <h4>📞 Telefone</h4>
                        <p>(11) 1234-5678</p>
                    </div>
                    <div class="contato-item">
                        <h4>✉️ Email</h4>
                        <p>servicos@faculdade.edu.br</p>
                    </div>
                </div>
            </section>
        </main>

        <footer>
            <div class="container">
                <p>&copy; 2025 Faculdade - Serviços Gratuitos para a Comunidade</p>
                <p>Projeto desenvolvido com JSP, Servlets e amor pela comunidade ❤️</p>
            </div>
        </footer>
    </body>

    </html>