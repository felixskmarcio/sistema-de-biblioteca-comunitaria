package com.example.service;

import com.example.model.User;
import java.util.ArrayList;
import java.util.List;

/**
 * Serviço responsável por gerenciar operações relacionadas a usuários.
 * Implementa a lógica de negócio para cadastro, consulta, atualização e remoção de usuários.
 */
public class UserService {
    // Lista estática que armazena os usuários cadastrados (simulando um banco de dados em memória)
    private static List<User> users = new ArrayList<>();
    
    // Contador para gerar IDs únicos para novos usuários
    private static Long nextId = 1L;

    /**
     * Retorna todos os usuários cadastrados no sistema.
     * Cria uma nova lista para evitar modificações externas na lista original.
     * 
     * @return Lista com todos os usuários
     */
    public List<User> getAllUsers() {
        return new ArrayList<>(users);
    }

    /**
     * Busca um usuário pelo seu ID.
     * 
     * @param id ID do usuário a ser buscado
     * @return O usuário encontrado ou null se não existir
     */
    public User getUserById(Long id) {
        return users.stream()
                .filter(user -> user.getId().equals(id))
                .findFirst()
                .orElse(null);
    }

    /**
     * Adiciona um novo usuário ao sistema.
     * Atribui automaticamente um ID único ao usuário.
     * 
     * @param user O usuário a ser adicionado
     */
    public void addUser(User user) {
        user.setId(nextId++);
        users.add(user);
    }

    /**
     * Atualiza as informações de um usuário existente.
     * Localiza o usuário pelo ID e substitui seus dados.
     * 
     * @param user O usuário com as novas informações
     */
    public void updateUser(User user) {
        for (int i = 0; i < users.size(); i++) {
            if (users.get(i).getId().equals(user.getId())) {
                users.set(i, user);
                return;
            }
        }
    }

    /**
     * Remove um usuário do sistema pelo seu ID.
     * Utiliza programação funcional para filtrar a lista de usuários.
     * 
     * @param id ID do usuário a ser removido
     */
    public void deleteUser(Long id) {
        users.removeIf(user -> user.getId().equals(id));
    }
}