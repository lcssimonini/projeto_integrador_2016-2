package br.com.sixfit.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.sixfit.bos.LoginBO;
import br.com.sixfit.bos.UsuarioBO;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
       
	private static final long serialVersionUID = -441933886957708949L;

	public LogoutServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UsuarioBO.logout(request);
		System.out.println("usuario deslogado");
		response.sendRedirect("deslogado");
	}
}
