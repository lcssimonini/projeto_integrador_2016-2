package br.com.sixfit.entities;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import br.com.sixfit.dao.UsuarioDAO;
import br.com.sixfit.db.Connectionfactory;

public class UsuarioJDBC implements UsuarioDAO {
	
	private Connectionfactory connectionFactory;
	 
	UsuarioJDBC(Connectionfactory connectionFactory) {
		this.connectionFactory = connectionFactory;
	}

	@Override
	public Usuario find(Long id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Usuario findByEmail(String email) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Usuario> findAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void create(Usuario user) throws IllegalArgumentException, Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Usuario user) throws IllegalArgumentException, Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Usuario user) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean existEmail(String email) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void changePassword(Usuario user) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
   private static Usuario map(ResultSet resultSet) throws SQLException {
	   
	   Usuario usuario = new Usuario();
	   
       usuario.setId(resultSet.getLong("id"));
       usuario.setNome(resultSet.getString("nome"));
       usuario.setEmail(resultSet.getString("email"));
       usuario.setGenero(resultSet.getString("genero"));
       usuario.setNascimento(resultSet.getDate("nascimento"));
       usuario.setPeso(resultSet.getFloat("peso"));
       usuario.setAltura(resultSet.getFloat("altura"));
       usuario.setSenha(resultSet.getString("senha"));
       
       return usuario;
    }
}
