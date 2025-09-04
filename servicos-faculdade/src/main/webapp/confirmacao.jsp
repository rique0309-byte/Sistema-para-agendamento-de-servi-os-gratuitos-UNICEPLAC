<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.faculdade.servicos.Agendamento" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agendamento Confirmado - Serviços Gratuitos</title>
    <link rel="stylesheet" href="css/style-completo.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>Agendamento Confirmado</h1>
            <p>Seu atendimento foi agendado com sucesso!</p>
        </div>
    </header>

    <main class="container">
        <div class="confirmacao">
            <h2>✅ Agendamento Realizado com Sucesso!</h2>
            
            <%
                Agendamento agendamento = (Agendamento) request.getAttribute("agendamento");
                if (agendamento != null) {
            %>
            
            <div class="detalhes">
                <h3>Detalhes do Agendamento</h3>
                <p><strong>Protocolo:</strong> #<%= agendamento.getId() %></p>
                <p><strong>Serviço:</strong> <%= agendamento.getNomeServico() %></p>
                <p><strong>Nome:</strong> <%= agendamento.getNome() %></p>
                <p><strong>Email:</strong> <%= agendamento.getEmail() %></p>
                <p><strong>Telefone:</strong> <%= agendamento.getTelefone() %></p>
                <p><strong>Data:</strong> <%= agendamento.getData() %></p>
                <p><strong>Horário:</strong> <%= agendamento.getHorario() %></p>
                
                <% if ("veterinario".equals(agendamento.getServico()) && agendamento.getAnimal() != null && !agendamento.getAnimal().isEmpty()) { %>
                <p><strong>Animal:</strong> <%= agendamento.getAnimal() %></p>
                <p><strong>Espécie:</strong> <%= agendamento.getEspecie() %></p>
                <% } %>
                
                <% if (agendamento.getObservacoes() != null && !agendamento.getObservacoes().isEmpty()) { %>
                <p><strong>Observações:</strong> <%= agendamento.getObservacoes() %></p>
                <% } %>
            </div>
            
            <% } %>
            
            <div class="proximos-passos">
                <h3>Próximos Passos</h3>
                <ul style="text-align: left; display: inline-block;">
                    <li>Você receberá um email de confirmação em breve</li>
                    <li>Chegue 15 minutos antes do horário agendado</li>
                    <li>Traga um documento de identidade</li>
                    <li>Em caso de dúvidas, entre em contato conosco</li>
                </ul>
            </div>
            
            <div class="form-actions">
                <a href="index.jsp" class="btn">Voltar ao Início</a>
                <a href="agendamento.jsp" class="btn btn-secondary">Novo Agendamento</a>
            </div>
        </div>
    </main>

    <footer>
        <div class="container">
            <p>&copy; 2025 Faculdade - Serviços Gratuitos para a Comunidade</p>
        </div>
    </footer>
</body>
</html>