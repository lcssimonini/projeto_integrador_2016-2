package br.com.sixfit.bos;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import br.com.sixfit.db.Connectionfactory;
import br.com.sixfit.entities.Usuario;
import br.com.sixfit.entities.UsuarioJDBC;

public class LoginBO {
	
	public static final String USUARIO_LOGADO = "usuario.logado";
	
	static UsuarioJDBC usuariojdbc;
	
	static {
		try {
			usuariojdbc = new UsuarioJDBC(Connectionfactory.getInstance());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void logout(HttpServletRequest request) {
		HttpSession session = request.getSession();

		if (session.getAttribute(LoginBO.USUARIO_LOGADO) != null) {
			session.removeAttribute(LoginBO.USUARIO_LOGADO);
		}
	}
	
	public static void login(HttpServletRequest request, Usuario usuario) {
		request.getSession().setAttribute(LoginBO.USUARIO_LOGADO, usuario);
	}
	
	public static Boolean login(HttpServletRequest request) {
		Boolean logado = false;
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		Usuario usuario = null;
		
		try {
			usuario = usuariojdbc.findByEmail(email);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (usuario != null && usuario.getSenha().equals(senha)) {
			request.getSession().setAttribute(LoginBO.USUARIO_LOGADO, usuario);
			logado = true;
		}
		
		return logado;
	}
	
	public static Usuario getUsuarioLogado(HttpServletRequest request) {
		HttpSession session = request.getSession();

		if (session.getAttribute(LoginBO.USUARIO_LOGADO) != null) {
			return (Usuario) session.getAttribute(LoginBO.USUARIO_LOGADO);
		} else {
			return null;
		}
	}
}