package com.umc.cadastro.controller;

import com.umc.cadastro.model.Usuario;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeParseException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cadastrar")
public class CadastroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        try {
            String nome = request.getParameter("nome");
            String sobrenome = request.getParameter("sobrenome");
            String email = request.getParameter("email_celular");
            String senha = request.getParameter("senha");
            String genero = request.getParameter("genero");

            int dia = Integer.parseInt(request.getParameter("dia_nascimento"));
            int mes = Integer.parseInt(request.getParameter("mes_nascimento"));
            int ano = Integer.parseInt(request.getParameter("ano_nascimento"));
            LocalDate dataNascimento = LocalDate.of(ano, mes, dia);

            Usuario novoUsuario = new Usuario();
            novoUsuario.setNome(nome);
            novoUsuario.setSobrenome(sobrenome);
            novoUsuario.setEmailOuCelular(email);
            novoUsuario.setSenha(senha);
            novoUsuario.setDataNascimento(dataNascimento);
            novoUsuario.setGenero(genero);

            // Lógica de negócio (ex: salvar no banco de dados)
            // Neste ponto, você chamaria uma classe DAO (Data Access Object) para persistir o novoUsuario.
            System.out.println("Usuário criado com sucesso: " + novoUsuario.getNome());
            
            response.sendRedirect("cadastro-sucesso.jsp");

        } catch (NumberFormatException | DateTimeParseException e) {
            request.setAttribute("mensagemErro", "Dados inválidos! Por favor, verifique a data de nascimento.");
            request.getRequestDispatcher("cadastro.jsp").forward(request, response);
        }
    }
}