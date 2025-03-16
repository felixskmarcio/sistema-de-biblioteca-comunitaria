<%-- 
  Página de cadastro de livros
  Esta página apresenta um formulário para cadastro de novos livros no sistema.
  Permite ao usuário inserir informações como título, autor e ISBN.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- Importação da biblioteca JSTL core para uso de tags condicionais e iterativas --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Livro</title>
        <%-- Estilos CSS específicos para esta página de cadastro --%>
    <style>
        /* Container principal com largura máxima e centralizado */
        .container {
            max-width: 600px;
            margin: 2rem auto;
            padding: 0 1rem;
        }
        /* Estilo do formulário com layout em coluna */
        form {
            display: flex;
            flex-direction: column;
            gap: 1rem;
        }
        /* Estilo para cada grupo de campo do formulário */
        .form-group {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }
        /* Estilo para as labels dos campos */
        label {
            font-weight: bold;
        }
        /* Estilo para os campos de entrada */
        input {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        /* Estilo do botão de envio do formulário */
        .submit-btn {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        /* Efeito hover no botão de envio */
        .submit-btn:hover {
            background-color: #45a049;
        }
        /* Estilo do botão de voltar */
        .back-btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #666;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 1rem;
            margin-left: 10px;
        }
        .back-btn:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Cadastrar Livro</h1>
        <%-- Formulário de cadastro que envia os dados para o endpoint /books/register via método POST --%>
        <form action="${pageContext.request.contextPath}/books/register" method="post">
            <%-- Campo para entrada do título do livro --%>
            <div class="form-group">
                <label for="title">Título:</label>
                <input type="text" id="title" name="title" required>
            </div>
            <%-- Campo para entrada do autor do livro --%>
            <div class="form-group">
                <label for="author">Autor:</label>
                <input type="text" id="author" name="author" required>
            </div>
            <%-- Campo para entrada do ISBN do livro --%>
            <div class="form-group">
                <label for="isbn">ISBN:</label>
                <input type="text" id="isbn" name="isbn" required>
            </div>
            <%-- Botão para enviar o formulário e cadastrar o livro --%>
            <button type="submit" class="submit-btn">Cadastrar</button>
        </form>
        <%-- Link para voltar à página inicial --%>
        <a href="${pageContext.request.contextPath}/" class="back-btn">Voltar</a>
    </div>
</body>
</html>