package br.com.sixfit.bos;

import javax.servlet.http.HttpServletRequest;
import javax.xml.bind.ValidationException;

import org.apache.commons.lang3.StringUtils;

import br.com.sixfit.db.Connectionfactory;
import br.com.sixfit.entities.Usuario;
import br.com.sixfit.entities.UsuarioJDBC;

public class UsuarioBO {
	
	static UsuarioJDBC usuariojdbc; 
	
	static {
		try {
			usuariojdbc = new UsuarioJDBC(Connectionfactory.getInstance());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Usuario createUsuario(HttpServletRequest request) throws Exception {
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String genero = request.getParameter("genero");
		String nascimento = request.getParameter("nascimento");
		String peso = request.getParameter("peso");
		String altura = request.getParameter("altura");
		
		String senha = request.getParameter("senha");
		String confSenha = request.getParameter("confirmarsenha");
		
		if (!StringUtils.isEmpty(senha)) {
			if (!senha.equals(confSenha)) {
				throw new ValidationException("senha", "a senha deve ser igual à confirmação de senha");
			}
		}
		
		Usuario usuario = new Usuario(nome, email);
		usuario.setAltura(altura);
		usuario.setPeso(peso);
		usuario.setGenero(genero);
		usuario.setNascimento(nascimento);
		usuario.setSenha(senha);
		
		return usuariojdbc.create(usuario);
	}
	
	public static Usuario updateUsuario(Usuario usuario) throws Exception {
		return usuariojdbc.update(usuario);
	}
}
