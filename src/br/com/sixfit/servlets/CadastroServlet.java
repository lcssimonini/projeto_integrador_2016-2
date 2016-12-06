package br.com.sixfit.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.sixfit.bos.LoginBO;
import br.com.sixfit.bos.UsuarioBO;
import br.com.sixfit.entities.Usuario;

@WebServlet("/cadastro")
public class CadastroServlet extends HttpServlet {

	private static final long serialVersionUID = 4088447823106399481L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Usuario usuario = null;
		
		try {
			usuario = UsuarioBO.createUsuario(request);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (usuario != null) {
			request.setAttribute(LoginBO.USUARIO_LOGADO, usuario);
			request.getRequestDispatcher("cadastro.jsp").forward(request, response);
		} else {
			response.sendRedirect("cadastro.html");
		}
		
	}
}
