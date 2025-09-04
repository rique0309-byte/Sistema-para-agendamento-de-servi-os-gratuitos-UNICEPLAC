<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agendamento - Serviços Gratuitos</title>
    <link rel="stylesheet" href="css/style-completo.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>Agendamento de Serviço</h1>
            <p>Preencha os dados para agendar seu atendimento</p>
        </div>
    </header>

    <main class="container">
        <div class="form-container">
            <%
                String servico = request.getParameter("servico");
                String nomeServico = "";
                String icone = "";
                
                if ("veterinario".equals(servico)) {
                    nomeServico = "Atendimento Veterinário";
                    icone = "🐾";
                } else if ("psicologia".equals(servico)) {
                    nomeServico = "Atendimento Psicológico";
                    icone = "🧠";
                } else if ("odontologia".equals(servico)) {
                    nomeServico = "Atendimento Odontológico";
                    icone = "🦷";
                } else {
                    nomeServico = "Serviço";
                    icone = "📋";
                }
            %>
            
            <h2><%= icone %> <%= nomeServico %></h2>
            
            <form action="AgendamentoServlet" method="post" class="agendamento-form">
                <input type="hidden" name="servico" value="<%= servico %>">
                
                <div class="form-group">
                    <label for="nome">Nome Completo:</label>
                    <input type="text" id="nome" name="nome" required>
                </div>
                
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                
                <div class="form-group">
                    <label for="telefone">Telefone:</label>
                    <input type="tel" id="telefone" name="telefone" required>
                </div>
                
                <div class="form-group">
                    <label for="data">Data Preferida:</label>
                    <input type="date" id="data" name="data" required>
                </div>
                
                <div class="form-group">
                    <label for="horario">Horário Preferido:</label>
                    <select id="horario" name="horario" required>
                        <option value="">Selecione um horário</option>
                        <option value="08:00">08:00</option>
                        <option value="09:00">09:00</option>
                        <option value="10:00">10:00</option>
                        <option value="11:00">11:00</option>
                        <option value="14:00">14:00</option>
                        <option value="15:00">15:00</option>
                        <option value="16:00">16:00</option>
                        <option value="17:00">17:00</option>
                    </select>
                </div>
                
                <% if ("veterinario".equals(servico)) { %>
                <div class="form-group">
                    <label for="animal">Nome do Animal:</label>
                    <input type="text" id="animal" name="animal">
                </div>
                
                <div class="form-group">
                    <label for="especie">Espécie:</label>
                    <select id="especie" name="especie">
                        <option value="">Selecione</option>
                        <option value="cao">Cão</option>
                        <option value="gato">Gato</option>
                        <option value="ave">Ave</option>
                        <option value="outro">Outro</option>
                    </select>
                </div>
                <% } %>
                
                <div class="form-group">
                    <label for="observacoes">Observações:</label>
                    <textarea id="observacoes" name="observacoes" rows="4" placeholder="Descreva brevemente o motivo do atendimento ou observações importantes"></textarea>
                </div>
                
                <div class="form-actions">
                    <button type="submit" class="btn">Agendar Atendimento</button>
                    <a href="index.jsp" class="btn btn-secondary">Voltar</a>
                </div>
            </form>
        </div>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2025 Faculdade - Serviços Gratuitos para a Comunidade</p>
        </div>
    </footer>
</body>
</html>