package com.EntregaFinalMVCcontroller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EntregaFinalMvc.DAO.UsuarioDAO;
import com.EntregaFinalMvc.Model.Usuario;

@WebServlet("/ReadController")
public class ReadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			UsuarioDAO uDAO = new UsuarioDAO();
			List<Usuario> usuarios = uDAO.ReadUsuarios();
			request.setAttribute("Usuario", usuarios);
			RequestDispatcher rd = request.getRequestDispatcher("usuario.jsp");
			rd.forward(request, response);
			
	
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
