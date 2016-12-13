package br.com.sixfit.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import br.com.sixfit.bos.LoginBO;
import br.com.sixfit.entities.Usuario;

@WebServlet("/get_usuario")
public class UsuarioLogadoServlet extends HttpServlet {
	
	private static final long serialVersionUID = 670882768288494197L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Usuario usuario = LoginBO.getUsuarioLogado(req);
		
		if (usuario != null) {
			resp.getWriter().write("{\"usuario_logado\": \""+usuario.getEmail()+"\"}");
		} else {
			resp.getWriter().write("{\"usuario_logado\": \"nenhum\"}");
		}
	}
}
