package br.com.sixfit.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.sixfit.entities.Usuario;

@WebServlet("/resultado")
public class ResultadoServlet extends HttpServlet {

	private static final long serialVersionUID = -4664070306917670997L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Usuario> usuarios = new ArrayList<Usuario>();
		usuarios.add(new Usuario("lucas", "simonini"));
		usuarios.add(new Usuario("rebeca", "simonini"));
		usuarios.add(new Usuario("juliana", "simonini"));
		
		request.setAttribute("usuarios", usuarios);
		request.getRequestDispatcher("teste.jsp").forward(request, response);
	}
}
