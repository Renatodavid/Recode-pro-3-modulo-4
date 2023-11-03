package com.EntregaFinalMVCcontroller;

import java.io.IOException;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EntregaFinalMvc.DAO.UsuarioDAO;
import com.EntregaFinalMvc.Model.Usuario;



@WebServlet("/CreateController")
public class CreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	
			throws ServletException, IOException {

	

		Usuario usuario = new Usuario();
		
		
		usuario.setPrimeiroNome(request.getParameter("primeiroNome"));
		usuario.setRgCpf(request.getParameter("rgCpf"));
		usuario.setEmail(request.getParameter("email"));
		usuario.setCelular(request.getParameter("celular"));
		usuario.setSenha(request.getParameter("senha"));
		usuario.setConfirmeSenha(request.getParameter("confirmeSenha"));
		usuario.setGenero(request.getParameter("genero"));
		
		try {
			UsuarioDAO usuarioDAO = new UsuarioDAO();
		
			usuarioDAO.CreateUsuario(usuario);
		response.sendRedirect("ReadController");
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
	}
	
}
