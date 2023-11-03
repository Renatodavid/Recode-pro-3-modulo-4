<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista usuario</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="index.css"> 
</head>
<header>
<nav class="navbar navbar-expand-lg bg-body-light" id="nav">
			<div class="container-fluid bg-nav box">
				<a class="navbar-brand" href="#"><img
					class="img-fluid st teste-img" src="./img/logo_branco.png"
					alt="logo do projeto" width="100" height="41"> </a>
				<button class="navbar-toggler bg-light "
					style="color: rgb(0, 0, 0);" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon "></span>
				</button>
				<div class="collapse navbar-collapse " id="navbarSupportedContent">
					<ul class="navbar-nav m-auto me-5  mb-lg-2 fs-2 gap-5  ">
						<li class="nav-item"><a class="nav-link t " href="index.html">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link t "
							href="destino.html"> Destino </a></li>
						<li class="nav-item"><a class="nav-link t"
							href="promocoes.html"> Promoções </a></li>
						<li class="nav-item"><a class="nav-link t"
							href="cadastro.jsp"> Contatos </a></li>
						<li class="nav-item"><a class="nav-link t" href="login.html">
								Login </a></li>
					</ul>
				</div>
			</div>
		</nav>

	</header>
	
	<div class="container-fluid">
	
	<h1 class="m-auto ml-5  mb-lg-2 fs-4 gap-5 ">Lista de Clientes</h1>
	</div>
	<div class="container">
	<a href="./cadastro.jsp" class="btn btn-primary ml-5 ">Criar novo</a>
	</div>
	
	
	<div class="containerC">
		
		<table class="table table-bordered">
		
			<thead>
				<tr >
					<th>ID</th>
					<th>Primeiro Nome</th>
					<th>Rg / Cpf</th>
					<th>E-mail</th>
					<th>Celular</th>
					<th>Senha</th>
					<th>Confirme Senha</th>
					<th>Genero</th>
				</tr>
			</thead>
			<tbody>


			<c:forEach items="${Usuario}" var="usuario">  
			<tr>
						<td>${usuario.usuarioId}</td>
						<td>${usuario.primeiroNome}</td>
						<td>${usuario.rgCpf}</td>
						<td>${usuario.email}</td>
						<td>${usuario.celular}</td>
						<td>${usuario.senha}</td>
						<td>${usuario.confirmeSenha}</td>
						<td>${usuario.genero}</td>
						<td>
						<a  href="UpdateController?id=${usuario.usuarioId}" class="botaop ">Editar</a>
						<a href="DeleteController?id=${usuario.usuarioId}" class="botaop">Excluir</a>
						
						</td>
			</tr>
			</c:forEach> 
			</tbody>
		</table>
	</div>
	
	<!-- Rodapé -->
	<footer class="container-fluid">
		
				
				<p><i class="bi bi-geo-alt"></i> Petropólis Rio de Janeiro RJ </p>
				<p><i class="bi bi-telephone"></i> (21)98705-17825 </p>
				<p><i class="bi bi-envelope"></i> renato.david@aluno.recode.org.br</p>
			
					
			<p class="container text-center mt-5"><i class="bi bi-c-circle"></i> <strong>RR</strong> - Todos os direitos
				reservados</p>
		
	</footer>
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>