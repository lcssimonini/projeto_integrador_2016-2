package br.com.sixfit.entities;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import br.com.sixfit.constants.SQLConstants;
import br.com.sixfit.dao.DAOUtil;
import br.com.sixfit.dao.UsuarioDAO;
import br.com.sixfit.db.Connectionfactory;

public class UsuarioJDBC implements UsuarioDAO {
	
	private Connectionfactory connectionFactory;
	 
	public UsuarioJDBC(Connectionfactory connectionFactory) {
		this.connectionFactory = connectionFactory;
	}

	@Override
	public Usuario find(Long id) throws Exception {
		return find(SQLConstants.SQL_FIND_BY_ID, Arrays.asList(new Object[] {id}));
	}

	@Override
	public Usuario findByEmail(String email) throws Exception {
		return find(SQLConstants.SQL_FIND_BY_EMAIL, Arrays.asList(new Object[] {email}));
	}

	@Override
	public List<Usuario> findAll() throws Exception {
		List<Usuario> usuarios = new ArrayList<Usuario>();

        Connection connection = connectionFactory.getConnection();
        PreparedStatement statement = connection.prepareStatement(SQLConstants.SQL_FIND_ALL);
        ResultSet resultSet = statement.executeQuery();
        
        while (resultSet.next()) {
            usuarios.add(map(resultSet));
        }

        return usuarios;
	}

	@Override
	public Usuario create(Usuario usuario) throws IllegalArgumentException, Exception {
	    if (usuario.getId() != null) {
            throw new IllegalArgumentException("Usuário já existe na base.");
        }
	    
        Object[] values = {
        	usuario.getNome(),
            usuario.getEmail(),
            usuario.getAltura(),
            usuario.getPeso(),
            usuario.getGenero(),
            usuario.getNascimento(),
            usuario.getSenha()
        };

        Connection connection = connectionFactory.getConnection();
        PreparedStatement statement = DAOUtil.prepareStatement(connection, SQLConstants.SQL_INSERT, true, Arrays.asList(values));

        try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
            if (generatedKeys.next()) {
                usuario.setId(generatedKeys.getLong(1));
            } else {
                throw new Exception("Erro ao criar usuário.");
            }
        }
        
        return usuario;
	}

	@Override
	public Usuario update(Usuario user) throws IllegalArgumentException, Exception {
		// TODO Auto-generated method stub
		return null;
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
	
	private Usuario find(String sql, List<Object> values) throws Exception {
		Usuario user = null;

        try (
            Connection connection = connectionFactory.getConnection();
            PreparedStatement statement = DAOUtil.prepareStatement(connection, sql, false, values);
            ResultSet resultSet = statement.executeQuery();
        ) {
            if (resultSet.next()) {
                user = map(resultSet);
            }
        } catch (SQLException e) {
        	e.printStackTrace();
        }

        return user;
    }


	@Override
	public void changePassword(Usuario usuario) throws Exception {
		if (usuario.getId() == null) {
			throw new IllegalArgumentException("Usuario não foi salvo, não é possível mudar a senha");
	    }
		
		List<Object> values = new LinkedList<Object>();
		values.add(usuario.getSenha());
		values.add(usuario.getId());

        Connection connection = connectionFactory.getConnection();
        PreparedStatement statement = DAOUtil.prepareStatement(connection, SQLConstants.SQL_CHANGE_PASSWORD, false, values);
        statement.executeUpdate();
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
