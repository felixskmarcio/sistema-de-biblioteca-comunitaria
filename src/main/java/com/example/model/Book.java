package com.example.model;

/**
 * Classe que representa um livro no sistema de biblioteca.
 * Contém informações básicas sobre o livro como título, autor e ISBN.
 */
public class Book {
    // Atributos que armazenam as informações do livro
    private String title;  // Título do livro
    private String author; // Nome do autor
    private String isbn;   // Código ISBN (International Standard Book Number)

    /**
     * Construtor que inicializa um novo livro com todas as informações necessárias.
     * 
     * @param title Título do livro
     * @param author Nome do autor
     * @param isbn Código ISBN do livro
     */
    public Book(String title, String author, String isbn) {
        this.title = title;
        this.author = author;
        this.isbn = isbn;
    }

    // Métodos getters e setters para acessar e modificar os atributos privados
    
    /**
     * Retorna o título do livro.
     * @return Título do livro
     */
    public String getTitle() {
        return title;
    }

    /**
     * Define ou altera o título do livro.
     * @param title Novo título do livro
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * Retorna o nome do autor do livro.
     * @return Nome do autor
     */
    public String getAuthor() {
        return author;
    }

    /**
     * Define ou altera o nome do autor do livro.
     * @param author Novo nome do autor
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * Retorna o código ISBN do livro.
     * @return Código ISBN
     */
    public String getIsbn() {
        return isbn;
    }

    /**
     * Define ou altera o código ISBN do livro.
     * @param isbn Novo código ISBN
     */
    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
}
