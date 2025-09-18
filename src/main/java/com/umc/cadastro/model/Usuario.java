package com.umc.cadastro.model;

import java.time.LocalDate;

public class Usuario {
    private String nome;
    private String sobrenome;
    private String emailOuCelular;
    private String senha;
    private LocalDate dataNascimento;
    private String genero;

    public Usuario() {}

    public String getNome() { return nome; }
    public void setNome(String nome) { this.nome = nome; }

    public String getSobrenome() { return sobrenome; }
    public void setSobrenome(String sobrenome) { this.sobrenome = sobrenome; }

    public String getEmailOuCelular() { return emailOuCelular; }
    public void setEmailOuCelular(String emailOuCelular) { this.emailOuCelular = emailOuCelular; }

    public String getSenha() { return senha; }
    public void setSenha(String senha) { this.senha = senha; }

    public LocalDate getDataNascimento() { return dataNascimento; }
    public void setDataNascimento(LocalDate dataNascimento) { this.dataNascimento = dataNascimento; }

    public String getGenero() { return genero; }
    public void setGenero(String genero) { this.genero = genero; }
}