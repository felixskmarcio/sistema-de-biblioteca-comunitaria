package com.example.service;

import com.example.model.Book;

import java.util.ArrayList;
import java.util.List;

/**
 * Serviço responsável por gerenciar operações relacionadas a livros.
 * Implementa a lógica de negócio para cadastro, listagem e busca de livros.
 */
public class BookService {
    // Lista que armazena os livros cadastrados (simulando um banco de dados em memória)
    private List<Book> books = new ArrayList<>();

    /**
     * Registra um novo livro no sistema.
     * 
     * @param book O objeto livro a ser registrado
     */
    public void registerBook(Book book) {
        books.add(book);
    }

    /**
     * Retorna todos os livros cadastrados no sistema.
     * 
     * @return Lista com todos os livros
     */
    public List<Book> getAllBooks() {
        return books;
    }

    /**
     * Realiza uma busca de livros por título, autor ou ISBN.
     * Se a consulta for vazia, retorna todos os livros.
     * 
     * @param query Termo de busca
     * @return Lista de livros que correspondem ao termo de busca
     */
    public List<Book> searchBooks(String query) {
        // Se a consulta for vazia, retorna todos os livros
        if (query == null || query.trim().isEmpty()) {
            return getAllBooks();
        }
        
        // Prepara a lista de resultados e normaliza o termo de busca
        List<Book> result = new ArrayList<>();
        String searchQuery = query.trim().toLowerCase();
        
        // Percorre todos os livros procurando correspondências
        for (Book book : books) {
            // Verifica se o termo de busca está presente no título, autor ou ISBN
            if ((book.getTitle() != null && book.getTitle().toLowerCase().contains(searchQuery)) ||
                (book.getAuthor() != null && book.getAuthor().toLowerCase().contains(searchQuery)) ||
                (book.getIsbn() != null && book.getIsbn().toLowerCase().contains(searchQuery))) {
                result.add(book);
            }
        }
        return result;
    }
}
