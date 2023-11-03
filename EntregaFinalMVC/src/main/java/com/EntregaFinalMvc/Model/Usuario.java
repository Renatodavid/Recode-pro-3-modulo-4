package com.EntregaFinalMvc.Model;

public class Usuario {

	private int UsuarioId;
	private String primeiroNome;
	private String rgCpf;
	private String email;
	private String celular;
	private String senha;
	private String confirmeSenha;
	private String genero;
	
	
	
	public Usuario(int UsuarioId, String primeiroNome, String rgCpf, String email, String celular, String senha,
			String confirmeSenha, String genero) {
		super();
		this.UsuarioId = UsuarioId;
		this.primeiroNome = primeiroNome;
		this.rgCpf = rgCpf;
		this.email = email;
		this.celular = celular;
		this.senha = senha;
		this.confirmeSenha = confirmeSenha;
		this.genero = genero;
	}
	public Usuario() {
		// TODO Auto-generated constructor stub
	}
	public int getUsuarioId() {
		return UsuarioId;
	}
	public void setUsuarioId(int usuarioId) {
		UsuarioId = usuarioId;
	}
	public String getPrimeiroNome() {
		return primeiroNome;
	}
	public void setPrimeiroNome(String primeiroNome) {
		this.primeiroNome = primeiroNome;
	}
	public String getRgCpf() {
		return rgCpf;
	}
	public void setRgCpf(String rgCpf) {
		this.rgCpf = rgCpf;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getConfirmeSenha() {
		return confirmeSenha;
	}
	public void setConfirmeSenha(String confirmeSenha) {
		this.confirmeSenha = confirmeSenha;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}

	
	}