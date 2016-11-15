package br.com.sixfit.dao;

import java.util.List;

import br.com.sixfit.entities.Usuario;

public interface UsuarioDAO {

    public Usuario find(Long id) throws Exception;

    public Usuario findByEmail(String email) throws Exception;

    public List<Usuario> findAll() throws Exception;

    public void create(Usuario user) throws IllegalArgumentException, Exception;

    public void update(Usuario user) throws IllegalArgumentException, Exception;

    public void delete(Usuario user) throws Exception;

    public boolean existEmail(String email) throws Exception;

    public void changePassword(Usuario user) throws Exception;
}
