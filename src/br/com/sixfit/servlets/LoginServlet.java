package br.com.sixfit.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.sixfit.bos.LoginBO;
import br.com.sixfit.bos.UsuarioBO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
       
	private static final long serialVersionUID = 2502414678075409075L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if (LoginBO.login(request)) {
			System.out.println("login sucesso");
			
			request.setAttribute("usuario", LoginBO.getUsuarioLogado(request));
			request.getRequestDispatcher("lances.jsp").forward(request, response);
		} else {
			System.out.println("login fracasso");
			response.sendRedirect("/");
		}		
	}
}
