<div align="center">

# 📚 Sistema de Biblioteca Comunitária

![Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellow)
![Versão](https://img.shields.io/badge/Versão-1.0.0-blue)
![Java](https://img.shields.io/badge/Java-11%2B-orange)
![License](https://img.shields.io/badge/Licença-MIT-green)

*Uma solução digital para democratizar o acesso à literatura em comunidades*

</div>

## 📋 Índice

- [💡 Visão Geral](#-visão-geral)
- [🎯 Problema e Solução](#-problema-e-solução)
- [🛠️ Funcionalidades](#️-funcionalidades)
- [💻 Stack Tecnológica](#-stack-tecnológica)
- [📊 Arquitetura](#-arquitetura)
- [🚀 Instalação e Execução](#-instalação-e-execução)
- [📱 Screenshots](#-screenshots)
- [👥 Equipe](#-equipe)
- [📄 Licença](#-licença)
- [🤝 Como Contribuir](#-como-contribuir)

## 💡 Visão Geral

O **Sistema de Biblioteca Comunitária** é uma plataforma web desenvolvida para democratizar o acesso à literatura através de um gerenciamento eficiente de bibliotecas comunitárias, focando em regiões de baixa renda e organizações com recursos limitados.

## 🎯 Problema e Solução

### 🔍 Contexto

| Aspecto | Descrição |
|---------|------------|
| **Público-alvo** | Associações comunitárias, ONGs e bibliotecas de bairro |
| **Foco geográfico** | Regiões de baixa renda e periferias urbanas |
| **Cenário operacional** | Funcionamento com recursos limitados e equipes voluntárias |

### ⚠️ Desafios Atuais

- 📕 **Controle de acervo ineficiente**: Perda de livros e dificuldade em rastrear o patrimônio
- 🔍 **Busca manual**: Tempo excessivo para localizar obras específicas
- ⏱️ **Processos burocráticos**: Empréstimos e devoluções com registros em papel
- 📉 **Barreira ao conhecimento**: Dificuldade de acesso à informação sobre disponibilidade
- 📊 **Ausência de métricas**: Impossibilidade de analisar padrões de leitura da comunidade

### ✅ Nossa Solução

Um sistema web completo que oferece:

- 🔄 **Automatização inteligente** de cadastros e processos
- 📱 **Interface intuitiva** para voluntários e usuários
- 🔍 **Busca avançada** no acervo com múltiplos filtros
- 📈 **Relatórios detalhados** para tomada de decisão
- 📣 **Notificações automáticas** para lembrete de devoluções

## 🛠️ Funcionalidades

### 📚 Módulo de Acervo

- ✏️ Cadastro completo de obras (título, autor, editora, ano, categoria, código)
- 🏷️ Etiquetagem com QR Code para rastreamento rápido
- 🔍 Busca avançada com filtros múltiplos
- 📊 Estatísticas de utilização e popularidade
- 📂 Categorização flexível e personalizada

### 👥 Módulo de Usuários

- 👤 Cadastro simplificado de leitores
- 📝 Histórico completo de leituras e preferências
- 🔔 Sistema de notificações (e-mail/SMS)
- ⭐ Programa de fidelidade e gamificação
- 🔒 Níveis de acesso para administradores e voluntários

### 📒 Módulo de Empréstimos

- ⏱️ Controle de prazos com alertas automáticos
- 📱 Renovação online sem necessidade de presença física
- 📊 Relatórios de atrasos e frequência
- 🔄 Fila de espera para títulos populares
- 📈 Dashboard com métricas de utilização

## 💻 Stack Tecnológica

### Backend
- ☕ **Java Servlets** - Core da aplicação
- 🔄 **JDBC** - Conexão com banco de dados
- 🔒 **Java Authentication** - Segurança e autenticação

### Frontend
- 🌐 **JSP** - Renderização dinâmica
- 🎨 **HTML5 & CSS3** - Estrutura e estilização
- 📊 **Chart.js** - Visualização de dados
- 📱 **Bootstrap 5** - Design responsivo

### Ferramentas & Infraestrutura
- 🔧 **Maven** - Gerenciamento de dependências
- 🖥️ **Apache Tomcat** - Servidor de aplicação
- 💾 **MySQL** - Banco de dados relacional
- 🔄 **Git** - Controle de versão

## 📊 Arquitetura

O sistema segue o padrão MVC (Model-View-Controller) com a seguinte estrutura:

```
src/
├── main/
│   ├── java/
│   │   └── com/biblioteca/
│   │       ├── controller/  # Servlets e lógica de controle
│   │       ├── model/       # Entidades e lógica de negócio
│   │       ├── dao/         # Acesso a dados
│   │       └── util/        # Classes utilitárias
│   └── webapp/
│       ├── WEB-INF/
│       │   └── views/       # Arquivos JSP
│       ├── resources/
│       │   ├── css/         # Estilos
│       │   ├── js/          # JavaScript
│       │   └── images/      # Imagens
│       └── index.jsp        # Página inicial
```

## 📋 Requisitos do Sistema

| Componente | Requisito Mínimo | Recomendado |
|------------|------------------|-------------|
| **Java JDK** | 11+ | 17 |
| **Maven** | 3.6+ | 3.8+ |
| **Servidor** | Tomcat 9 | Tomcat 10 |
| **RAM** | 4GB | 8GB |
| **Espaço em disco** | 500MB | 1GB |
| **Banco de dados** | MySQL 5.7+ | MySQL 8.0+ |

## 🚀 Instalação e Execução

### 1️⃣ Clone o repositório

```bash
git clone https://github.com/seu-usuario/biblioteca-comunitaria.git
cd biblioteca-comunitaria
```

### 2️⃣ Configure o banco de dados

```bash
mysql -u root -p < src/main/resources/database/schema.sql
```

### 3️⃣ Configure as credenciais

Edite o arquivo `src/main/resources/config.properties` com suas credenciais de banco de dados.

### 4️⃣ Compile e execute

```bash
mvn clean install
mvn tomcat7:run
```

### 5️⃣ Acesse o sistema

Abra seu navegador e acesse:
```
http://localhost:8080/biblioteca
```

## 👥 Equipe

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/felixskmarcio">
        <img src="https://avatars.githubusercontent.com/u/32266467?v=4" width="100px;" alt=""/><br />
        <b>Marcio Eduardo Felix</b>
      </a>
      <div>Desenvolvedor</div>
    </td>
    <td align="center">
      <a href="https://github.com/GustavoHFMO">
        <img src="https://avatars.githubusercontent.com/u/12481911?v=4" width="100px;" alt=""/><br />
        <b>Gustavo Miranda</b>
      </a>
      <div>Orientador</div>
    </td>
  </tr>
</table>

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 🤝 Como Contribuir

Contribuições são sempre bem-vindas! Veja como você pode ajudar:

1. 🍴 Faça um fork do projeto
2. 🔄 Crie uma branch para sua feature (`git checkout -b feature/nova-funcionalidade`)
3. 💾 Commit suas mudanças (`git commit -m 'Adiciona nova funcionalidade'`)
4. 📤 Push para a branch (`git push origin feature/nova-funcionalidade`)
5. 🔁 Abra um Pull Request

Para mais detalhes, consulte o arquivo [CONTRIBUTING.md](CONTRIBUTING.md).

---

<div align="center">

📱 **Contato**: [felixskmarcio2@gmail.com](mailto:felixskmarcio2@gmail.com)

⭐ **Deixe uma estrela se este projeto te ajudou!**

</div>