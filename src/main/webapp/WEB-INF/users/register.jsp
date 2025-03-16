<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- Página JSP para cadastro de novos usuários no sistema --%>
<html>
<head>
    <title>Cadastrar Usuário</title>
    <%-- Importação do arquivo CSS global do sistema --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <%-- Estilos específicos para o formulário de cadastro --%>
    <style>
        /* Container principal com largura máxima e centralizado na página */
        .container {
            max-width: 600px;
            margin: 2rem auto;
            padding: 2rem;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        /* Estilo para cada grupo de campo do formulário */
        .form-group {
            margin-bottom: 1.5rem;
        }
        /* Estilo para as labels dos campos */
        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            color: #333;
            font-weight: 500;
        }
        /* Estilo para os campos de entrada */
        .form-group input {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
            transition: border-color 0.2s;
        }
        /* Efeito visual quando o campo está em foco */
        .form-group input:focus {
            border-color: #4CAF50;
            outline: none;
        }
        /* Container para os botões do formulário */
        .button-container {
            margin-top: 2rem;
            display: flex;
            gap: 1rem;
        }
        /* Estilo padrão para os botões */
        .btn {
            padding: 0.75rem 1.5rem;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            font-size: 1rem;
            transition: background-color 0.2s;
        }
        /* Efeito hover para os botões */
        .btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Cadastrar Novo Usuário</h1>
        <%-- Formulário de cadastro que envia os dados para o endpoint /users/add via método POST --%>
        <form action="${pageContext.request.contextPath}/users/add" method="post">
            <%-- Campo para entrada do nome do usuário --%>
            <div class="form-group">
                <label for="name">Nome:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <%-- Campo para entrada do email do usuário --%>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <%-- Campo para entrada do telefone do usuário --%>
            <div class="form-group">
                <label for="phone">Telefone:</label>
                <input type="tel" id="phone" name="phone" required>
            </div>
            <%-- Container com os botões de ação do formulário --%>
            <div class="button-container">
                <%-- Botão para enviar o formulário e salvar os dados --%>
                <button type="submit" class="btn">Salvar</button>
                <%-- Link para cancelar a operação e retornar à listagem de usuários --%>
                <a href="${pageContext.request.contextPath}/users/list" class="btn">Cancelar</a>
            </div>
        </form>
    </div>
</body>
</html>