<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Configuração básica da página com codificação UTF-8 para suporte a caracteres especiais -->
    <meta charset="UTF-8">
    <!-- Título da página que aparece na aba do navegador -->
    <title>Biblioteca Comunitária</title>
    <!-- Importação do arquivo CSS externo para estilização da página -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
    <style>
        .project-description {
            padding: 1.5rem;
            margin: 2rem 0;
            background-color: #f9f9f9;
            border-radius: 8px;
            border-left: 4px solid #4CAF50;
        }
        
        .project-description h2 {
            color: #4CAF50;
            margin-top: 0;
        }
        
        .project-description h3 {
            color: #45a049;
            margin-top: 1.5rem;
            margin-bottom: 0.5rem;
        }
        
        .project-description p {
            line-height: 1.6;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>
    <main class="main-container">
        <header>
            <h1>Sistema de Biblioteca Comunitária</h1>
        </header>
        
        <nav class="navigation-menu">
            <a href="${pageContext.request.contextPath}/books/list" class="btn">Gerenciar Livros</a>
            <a href="${pageContext.request.contextPath}/users/list" class="btn">Gerenciar Usuários</a>
            <a href="${pageContext.request.contextPath}/books/register" class="btn">Cadastrar Livro</a>
            <a href="${pageContext.request.contextPath}/books/search" class="btn">Consultar Livro</a>
        </nav>
        
        <section class="project-description">
            <h2>Sobre o Projeto</h2>
            
            <h3>Q1: Estabelecimento/Instituição que Necessita do Sistema</h3>
            <p>Associações comunitárias, ONGs e bibliotecas de bairro necessitam de um sistema web para gerenciar o empréstimo de livros. Estas instituições frequentemente operam com recursos limitados e voluntários, tornando difícil o controle manual do acervo e dos empréstimos. O sistema proposto atenderia principalmente bibliotecas comunitárias em regiões de baixa renda, onde o acesso à literatura é fundamental para o desenvolvimento educacional.</p>
            
            <h3>Q2: Impactos e Consequências do Problema</h3>
            <p>A falta de um sistema adequado para gerenciamento de bibliotecas comunitárias resulta em:</p>
            <ul>
                <li>Perda de livros por falta de controle de empréstimos</li>
                <li>Dificuldade em localizar obras específicas no acervo</li>
                <li>Tempo excessivo gasto em processos manuais</li>
                <li>Limitação no acesso ao conhecimento pela comunidade</li>
            </ul>
            <p>O sistema web solucionaria estes problemas ao automatizar o cadastro de livros e usuários, controlar prazos de empréstimo, facilitar buscas no acervo e gerar relatórios de utilização, permitindo que os voluntários dediquem mais tempo a atividades de incentivo à leitura e menos a tarefas administrativas.</p>
            
            <h3>Q3: Protótipo da Solução</h3>
            <p>O sistema web contém informações sobre:</p>
            <ul>
                <li>Cadastro de livros (título, autor, editora, ano, categoria, código)</li>
                <li>Cadastro de usuários (nome, contato, endereço)</li>
                <li>Registro de empréstimos e devoluções</li>
                <li>Histórico de leituras por usuário</li>
            </ul>
            <p>Estas informações são organizadas em módulos de gerenciamento de livros e usuários, com funcionalidades de cadastro, consulta, atualização e remoção. A interface é simples e intuitiva, permitindo o uso mesmo por pessoas com pouca familiaridade com tecnologia. O sistema também oferece busca por diferentes critérios e relatórios de utilização do acervo.</p>
        </section>
    </main>
</body>
</html>