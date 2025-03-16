<%-- 
  Página de listagem de usuários
  Esta página exibe todos os usuários cadastrados no sistema em formato de tabela.
  Permite visualizar informações como nome, email e telefone de cada usuário.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- Importação da biblioteca JSTL core para uso de tags como forEach --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Usuários</title>
        <style>
        /* Container principal com largura máxima e centralizado */
        .container {
            max-width: 800px;
            margin: 2rem auto;
            padding: 0 1rem;
        }
        /* Estilo da tabela de usuários */
        .users-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1.5rem;
        }
        /* Estilo das células e cabeçalhos da tabela */
        .users-table th, .users-table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        /* Estilo específico para o cabeçalho da tabela */
        .users-table th {
            background-color: #f5f5f5;
        }
        /* Estilo do botão de adicionar usuário */
        .add-user-btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            margin-top: 1rem;
            margin-right: 10px;
        }
        /* Efeito hover no botão de adicionar */
        .add-user-btn:hover {
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
        }
        /* Efeito hover no botão de voltar */
        .back-btn:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <%-- Container principal que centraliza o conteúdo da página --%>
    <div class="container">
        <%-- Título da página --%>
        <h1>Lista de Usuários</h1>
        <%-- Tabela que exibe a lista de usuários cadastrados --%>
        <table class="users-table">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Email</th>
                    <th>Telefone</th>
                </tr>
            </thead>
            <tbody>
                <%-- Loop que itera sobre a coleção de usuários (${users}) enviada pelo controlador --%>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>${user.phone}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <%-- Link para acessar a página de cadastro de novos usuários --%>
        <a href="${pageContext.request.contextPath}/users/register" class="add-user-btn">Cadastrar Novo Usuário</a>
        <%-- Link para voltar à página inicial --%>
        <a href="${pageContext.request.contextPath}/" class="back-btn">Voltar</a>
    </div>
</body>
</html>