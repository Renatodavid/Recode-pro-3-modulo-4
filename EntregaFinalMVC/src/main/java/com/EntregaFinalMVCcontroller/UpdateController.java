package com.EntregaFinalMVCcontroller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EntregaFinalMvc.DAO.UsuarioDAO;
import com.EntregaFinalMvc.Model.Usuario;

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		try {
			UsuarioDAO uDAO = new UsuarioDAO();
			Usuario usuario = uDAO.ReadUsuario(id);

			request.setAttribute("usuario", usuario);

			RequestDispatcher r = request.getRequestDispatcher("atualizar.jsp");
			r.forward(request, response);

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Usuario usuario = new Usuario();
			usuario.setUsuarioId(Integer.parseInt(request.getParameter("usuarioId")));
			usuario.setPrimeiroNome(request.getParameter("primeiroNome"));
			usuario.setRgCpf(request.getParameter("rgCpf"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setCelular(request.getParameter("celular"));
			usuario.setSenha(request.getParameter("senha"));
			usuario.setConfirmeSenha(request.getParameter("confirmeSenha"));
			usuario.setGenero(request.getParameter("genero"));

			UsuarioDAO uDAO = new UsuarioDAO();
			uDAO.UpdateUsuario(usuario);

			response.sendRedirect("ReadController");

		} catch (Exception e) {
		}
		
	}
}
