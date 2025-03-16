<%-- 
  Página de resultados da pesquisa de livros
  Esta página exibe os resultados de uma pesquisa de livros realizada pelo usuário.
  Utiliza JSTL para iterar sobre a coleção de livros e exibi-los em formato de tabela.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%-- Importação da biblioteca JSTL core para uso de tags como forEach --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Resultados da Pesquisa</title>
        <%-- Estilos CSS específicos para esta página --%>
    <style>
        /* Container principal com largura máxima e centralizado */
        .container {
            max-width: 800px;
            margin: 2rem auto;
            padding: 0 1rem;
        }
        /* Estilo da tabela de livros */
        .books-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1.5rem;
        }
        /* Estilo das células e cabeçalhos da tabela */
        .books-table th, .books-table td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        /* Estilo específico para o cabeçalho da tabela */
        .books-table th {
            background-color: #f5f5f5;
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
        <h1>Resultados da Pesquisa</h1>
        <%-- Tabela que exibe os resultados da pesquisa --%>
        <table class="books-table">
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>ISBN</th>
                </tr>
            </thead>
            <tbody>
                <%-- Loop que itera sobre a coleção de livros (${books}) enviada pelo controlador --%>
                <c:forEach items="${books}" var="book">
                    <tr>
                        <td>${book.title}</td>
                        <td>${book.author}</td>
                        <td>${book.isbn}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <%-- Link para voltar à página inicial --%>
        <a href="${pageContext.request.contextPath}/" class="back-btn">Voltar</a>
    </div>
</body>
</html>