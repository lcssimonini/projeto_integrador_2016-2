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

@WebServlet("/atividades")
public class AtividadesServlet extends HttpServlet {
       
	private static final long serialVersionUID = 7010987344443298140L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuario usuarioLogado = null;
		
		try {
			usuarioLogado = LoginBO.getUsuarioLogado(request);
		} catch (Exception e) {
		}
		
		String[] atividadesArray = request.getParameterValues("atividades");
		String[] doencasArray = request.getParameterValues("doencas");
		String fumante = request.getParameter("fumante");
		String statusAtividade = request.getParameter("status_atividade");

		if (usuarioLogado != null) {
			
			usuarioLogado.setAtividade(String.join(",", atividadesArray));
			usuarioLogado.setDoenca(String.join(",", doencasArray));
			usuarioLogado.setStatusFumante(fumante);
			usuarioLogado.setStatusAtividade(statusAtividade);
			
			try {
				UsuarioBO.updateUsuario(usuarioLogado);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			request.setAttribute("usuario", usuarioLogado);
			request.getRequestDispatcher("resultados.jsp").forward(request, response);
		} else {
			response.sendRedirect("index.jsp");
		}	
	}
}
