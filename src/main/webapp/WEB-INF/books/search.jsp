<%-- 
  Página de pesquisa de livros
  Esta página permite ao usuário pesquisar livros por título, autor ou ISBN.
  Exibe os resultados da pesquisa em uma tabela e oferece links para outras funcionalidades.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- Importação da biblioteca JSTL core para uso de tags como forEach --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Pesquisa de Livros</title>
    <%-- Aqui poderiam ser adicionados estilos CSS específicos para esta página --%>
</head>
<body>
    <%-- Título principal da página --%>
    <h1>Pesquisa de Livros</h1>
    <%-- Formulário de pesquisa que envia a consulta para o endpoint /books/search via método GET --%>
    <form action="${pageContext.request.contextPath}/books/search" method="get">
        <%-- Campo de entrada para a consulta de pesquisa, mantém o valor anterior após submissão --%>
        <input type="text" name="query" value="${param.query}" placeholder="Pesquisar por título, autor ou ISBN">
        <%-- Botão para enviar o formulário de pesquisa --%>
        <input type="submit" value="Pesquisar">
    </form>

    <%-- Título da seção de resultados --%>
    <h2>Resultados da Pesquisa</h2>
    <%-- Tabela para exibir os resultados da pesquisa --%>
    <table border="1">
        <tr>
            <th>Título</th>
            <th>Autor</th>
            <th>ISBN</th>
        </tr>
        <%-- Loop que itera sobre a coleção de livros (${books}) enviada pelo controlador --%>
        <c:forEach var="book" items="${books}">
            <tr>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>${book.isbn}</td>
            </tr>
        </c:forEach>
    </table>

    <%-- Links de navegação para outras páginas do sistema --%>
    <p>
        <%-- Link para retornar ao menu principal --%>
        <a href="${pageContext.request.contextPath}/index.jsp">Voltar para o Menu Principal</a>
        <%-- Link para visualizar a lista completa de livros --%>
        <a href="${pageContext.request.contextPath}/books/list">Ver Lista Completa</a>
        <%-- Link para acessar o formulário de cadastro de novos livros --%>
        <a href="${pageContext.request.contextPath}/books/register.jsp">Cadastrar Novo Livro</a>
    </p>
</body>
</html>