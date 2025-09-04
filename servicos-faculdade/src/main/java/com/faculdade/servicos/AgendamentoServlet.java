package com.faculdade.servicos;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AgendamentoServlet")
public class AgendamentoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    // Lista simples para armazenar agendamentos (em produção usaria banco de dados)
    private static List<Agendamento> agendamentos = new ArrayList<>();
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Configurar encoding para caracteres especiais
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        
        // Capturar dados do formulário
        String servico = request.getParameter("servico");
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        String data = request.getParameter("data");
        String horario = request.getParameter("horario");
        String observacoes = request.getParameter("observacoes");
        
        // Dados específicos para veterinário
        String animal = request.getParameter("animal");
        String especie = request.getParameter("especie");
        
        // Criar objeto agendamento
        Agendamento agendamento = new Agendamento();
        agendamento.setServico(servico);
        agendamento.setNome(nome);
        agendamento.setEmail(email);
        agendamento.setTelefone(telefone);
        agendamento.setData(data);
        agendamento.setHorario(horario);
        agendamento.setObservacoes(observacoes);
        agendamento.setAnimal(animal);
        agendamento.setEspecie(especie);
        
        // Gerar ID simples
        agendamento.setId(agendamentos.size() + 1);
        
        // Adicionar à lista
        agendamentos.add(agendamento);
        
        // Definir atributos para a página de confirmação
        request.setAttribute("agendamento", agendamento);
        
        // Redirecionar para página de confirmação
        request.getRequestDispatcher("confirmacao.jsp").forward(request, response);
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Listar agendamentos (para administração)
        request.setAttribute("agendamentos", agendamentos);
        request.getRequestDispatcher("admin/listar-agendamentos.jsp").forward(request, response);
    }
}