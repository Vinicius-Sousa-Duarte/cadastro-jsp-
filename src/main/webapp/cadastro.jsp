<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Criar uma nova conta</title>
    <style>
        /* Reutilize o mesmo CSS da resposta anterior aqui */
        body { font-family: Arial, sans-serif; background-color: #f0f2f5; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .signup-container { background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); width: 400px; text-align: center; }
        h1 { font-size: 24px; margin-bottom: 5px; }
        p { color: #606770; margin-bottom: 20px; }
        .form-group { margin-bottom: 10px; text-align: left; }
        .form-group.inline { display: flex; gap: 10px; }
        .form-group.inline > input { width: 100%; }
        label { display: block; margin-bottom: 5px; color: #606770; font-size: 12px; }
        input[type="text"], input[type="password"], input[type="email"], select { width: 100%; padding: 10px; border: 1px solid #dddfe2; border-radius: 6px; font-size: 15px; box-sizing: border-box; }
        .select-group { display: flex; gap: 10px; }
        .select-group select { flex: 1; }
        .radio-group { display: flex; justify-content: space-between; }
        .radio-option { padding: 10px; border: 1px solid #dddfe2; border-radius: 6px; flex: 1; margin: 0 5px; display: flex; justify-content: space-between; align-items: center; }
        .btn-signup { background-color: #42b72a; color: #fff; border: none; border-radius: 6px; padding: 12px; font-size: 18px; font-weight: bold; width: 60%; cursor: pointer; margin-top: 10px; }
        .error-message { color: red; font-weight: bold; margin-bottom: 15px; }
    </style>
</head>
<body>
    <div class="signup-container">
        <h1>Criar uma nova conta</h1>
        <p>É rápido e fácil.</p>
        
        <c:if test="${not empty mensagemErro}">
            <p class="error-message">${mensagemErro}</p>
        </c:if>

        <form action="cadastrar" method="post">
             <div class="form-group inline">
                <input type="text" name="nome" placeholder="Nome" required>
                <input type="text" name="sobrenome" placeholder="Sobrenome" required>
            </div>
            <div class="form-group">
                <input type="email" name="email_celular" placeholder="Celular ou email" required>
            </div>
            <div class="form-group">
                <input type="password" name="senha" placeholder="Nova senha" required>
            </div>
            <div class="form-group">
                <label>Data de nascimento</label>
                <div class="select-group">
                    <select name="dia_nascimento" required>
                        <% for (int i = 1; i <= 31; i++) { %><option value="<%= i %>"><%= i %></option><% } %>
                    </select>
                    <select name="mes_nascimento" required>
                        <% String[] meses = {"jan","fev","mar","abr","mai","jun","jul","ago","set","out","nov","dez"};
                           for (int i = 0; i < meses.length; i++) { %><option value="<%= i+1 %>"><%= meses[i] %></option><% } %>
                    </select>
                    <select name="ano_nascimento" required>
                        <% for (int i = java.time.Year.now().getValue(); i >= 1905; i--) { %><option value="<%= i %>"><%= i %></option><% } %>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label>Gênero</label>
                <div class="radio-group">
                    <div class="radio-option"><label for="feminino">Feminino</label><input type="radio" id="feminino" name="genero" value="feminino" required></div>
                    <div class="radio-option"><label for="masculino">Masculino</label><input type="radio" id="masculino" name="genero" value="masculino"></div>
                    <div class="radio-option"><label for="personalizado">Personalizado</label><input type="radio" id="personalizado" name="genero" value="personalizado"></div>
                </div>
            </div>
            <button type="submit" class="btn-signup">Cadastre-se</button>
        </form>
    </div>
</body>
</html>