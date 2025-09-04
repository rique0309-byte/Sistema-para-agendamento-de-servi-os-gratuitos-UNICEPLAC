package com.faculdade.servicos;

public class Agendamento {
    private int id;
    private String servico;
    private String nome;
    private String email;
    private String telefone;
    private String data;
    private String horario;
    private String observacoes;
    private String animal; // Para serviço veterinário
    private String especie; // Para serviço veterinário
    
    // Construtor padrão
    public Agendamento() {}
    
    // Getters e Setters
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public String getServico() {
        return servico;
    }
    
    public void setServico(String servico) {
        this.servico = servico;
    }
    
    public String getNome() {
        return nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getTelefone() {
        return telefone;
    }
    
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    public String getData() {
        return data;
    }
    
    public void setData(String data) {
        this.data = data;
    }
    
    public String getHorario() {
        return horario;
    }
    
    public void setHorario(String horario) {
        this.horario = horario;
    }
    
    public String getObservacoes() {
        return observacoes;
    }
    
    public void setObservacoes(String observacoes) {
        this.observacoes = observacoes;
    }
    
    public String getAnimal() {
        return animal;
    }
    
    public void setAnimal(String animal) {
        this.animal = animal;
    }
    
    public String getEspecie() {
        return especie;
    }
    
    public void setEspecie(String especie) {
        this.especie = especie;
    }
    
    // Método para obter nome do serviço formatado
    public String getNomeServico() {
        switch (servico) {
            case "veterinario":
                return "Atendimento Veterinário";
            case "psicologia":
                return "Atendimento Psicológico";
            case "odontologia":
                return "Atendimento Odontológico";
            default:
                return "Serviço";
        }
    }
}