package com.EntregaFinalMvc.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.EntregaFinalMvc.Model.Usuario;
import com.EntregaMVCFinal.Database.Databaseconnection;

public class UsuarioDAO {

	private Connection connection;

	public UsuarioDAO() throws SQLException {
		connection = Databaseconnection.createConnection();
	}

	public void closeConnection() {
		try {
			if (connection != null && !connection.isClosed()) {
				connection.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void CreateUsuario(Usuario usuario) {

		String sql = "INSERT INTO usuario (  primeiroNome, email, senha,  celular, rgCpf, confirmeSenha, genero )VALUES (?,?,?,?,?,?,?)";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

			stmt.setString(1, usuario.getPrimeiroNome());
			stmt.setString(2, usuario.getEmail());
			stmt.setString(3, usuario.getSenha());
			stmt.setString(4, usuario.getCelular());
			stmt.setString(5, usuario.getRgCpf());
			stmt.setString(6, usuario.getConfirmeSenha());
			stmt.setString(7, usuario.getGenero());
			stmt.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	public Usuario ReadUsuario(int id) {
		Usuario usuario = null;
		String sql = "SELECT * FROM usuario WHERE usuarioId = ?";

		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			stmt.setInt(1, id);
		  ResultSet r =	stmt.executeQuery();
			
			if(r.next()) {
				
				Usuario user = new Usuario();
				user.setUsuarioId(r.getInt("usuarioId"));
				user.setPrimeiroNome(r.getString("primeiroNome"));
				user.setEmail(r.getString("email"));
				user.setSenha(r.getString("senha"));
				user.setCelular(r.getString("celular"));
				user.setRgCpf(r.getString("rgCpf"));
				user.setConfirmeSenha(r.getString("confirmeSenha"));
				user.setGenero(r.getString("genero"));
				
				
				return user;
				
				
				
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return usuario;
	}

	public List<Usuario> ReadUsuarios() {
		String sql = "SELECT * FROM usuario ";

		List<Usuario> usuarios = new ArrayList<Usuario>();

		ResultSet res = null;
		
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
		res = stmt.executeQuery();

			while (res.next()) {
				Usuario usuario = new Usuario();
				usuario.setUsuarioId(res.getInt("usuarioId"));
				usuario.setPrimeiroNome(res.getString("primeiroNome"));
				usuario.setEmail(res.getString("email"));
				usuario.setSenha(res.getString("senha"));
				usuario.setCelular(res.getString("celular"));
				usuario.setRgCpf(res.getString("rgCpf"));
				usuario.setConfirmeSenha(res.getString("confirmeSenha"));
				usuario.setGenero(res.getString("genero"));

				usuarios.add(usuario);
			}

		} catch (Exception e) {

			e.printStackTrace();
		}
		return usuarios;

	}

	public void UpdateUsuario(Usuario usuario) {
		String sql = "UPDATE usuario SET  primeiroNome = ?, email = ?, senha = ?,celular = ?, rgCpf = ?, confirmeSenha = ?,  genero = ? WHERE usuarioId = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {
			
			
		
			stmt.setString(1, usuario.getPrimeiroNome());
			stmt.setString(2, usuario.getEmail());
			stmt.setString(3, usuario.getSenha());
			stmt.setString(4, usuario.getCelular());
			stmt.setString(5, usuario.getRgCpf());
			stmt.setString(6, usuario.getConfirmeSenha());
			stmt.setString(7, usuario.getGenero());
			stmt.setInt(8, usuario.getUsuarioId());
			
			
			stmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	}

	public void DeleteUsuario(int id) {
		String sql = "DELETE FROM usuario WHERE usuarioId = ?";
		try (PreparedStatement stmt = connection.prepareStatement(sql)) {

			stmt.setInt(1, id);
			stmt.executeUpdate();

			System.out.println("Usuario deletado com sucesso!");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
