package com.example.model;

/**
 * Classe que representa um usuário do sistema de biblioteca.
 * Armazena informações pessoais e de contato do usuário.
 */
public class User {
    // Atributos que armazenam as informações do usuário
    private Long id;       // Identificador único do usuário no sistema
    private String name;   // Nome completo do usuário
    private String email;  // Endereço de e-mail para contato
    private String phone;  // Número de telefone para contato

    /**
     * Construtor padrão sem parâmetros.
     * Necessário para algumas operações de persistência.
     */
    public User() {}

    /**
     * Construtor que inicializa um usuário com todas as informações.
     * 
     * @param id Identificador único do usuário
     * @param name Nome completo do usuário
     * @param email Endereço de e-mail
     * @param phone Número de telefone
     */
    public User(Long id, String name, String email, String phone) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.phone = phone;
    }

    /**
     * Retorna o identificador único do usuário.
     * @return ID do usuário
     */
    public Long getId() {
        return id;
    }

    /**
     * Define ou altera o identificador do usuário.
     * @param id Novo ID do usuário
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * Retorna o nome completo do usuário.
     * @return Nome do usuário
     */
    public String getName() {
        return name;
    }

    /**
     * Define ou altera o nome do usuário.
     * @param name Novo nome do usuário
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Retorna o endereço de e-mail do usuário.
     * @return E-mail do usuário
     */
    public String getEmail() {
        return email;
    }

    /**
     * Define ou altera o endereço de e-mail do usuário.
     * @param email Novo e-mail do usuário
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Retorna o número de telefone do usuário.
     * @return Telefone do usuário
     */
    public String getPhone() {
        return phone;
    }

    /**
     * Define ou altera o número de telefone do usuário.
     * @param phone Novo telefone do usuário
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }
}