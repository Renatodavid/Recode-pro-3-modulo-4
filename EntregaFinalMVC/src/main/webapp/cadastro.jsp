<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>cadastro</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="index.css">
</head>


	<form action="#" method="post" class="containerC">

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
							href="cadastro.jsp"> Cadastro </a></li>
						<li class="nav-item"><a class="nav-link t" href="login.html">
								Login </a></li>
					</ul>
				</div>
			</div>
		</nav>
		</form>
<body class="bodycadastro">
	<form action="CreateController" method="post" class="containerC">
		<div class="container mt-4">
		<br><h2 class="text-center">Cadastre-se</h2>
			<div class="form-group">
				<label for="primeiroNome">Primeiro Nome:</label> <input type="text" value="Renato Marques david"
					class="form-control" id="primeiroNome" name="primeiroNome"required>
			</div>
			<div class="form-group">
				<label for="rgCpf">RG / CPF :</label> <input type="text" value="12314689753"
					class="form-control" id="rgCpf" name="rgCpf"required>
			</div>
			<div class="form-group">
				<label for="email">E-mail:</label> <input type="email" value="renato@hotmail.com"
					class="form-control" id="email" name="email"required>
			</div>
			<div class="form-group">
				<label for="celular">Celular:</label> <input type="tel"value="21987051725"
					class="form-control" id="celular" name="celular"required>
			</div>
			<div class="form-group">
				<label for="senha">Senha:</label> <input type="password"value="123"
					class="form-control" id="senha" name="senha"required>
			</div>
			<div class="form-group">
				<label for="confirmeSenha">Confirme sua Senha:</label> <input value="123"
					type="password" class="form-control" id="confirmeSenha"
					name="confirmeSenha"required>
			</div>
			<div class="form-group">
				<label>Gênero:</label><br>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" id="feminino"
						name="genero" value="feminino"> <label
						class="form-check-label" for="feminino">Feminino</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" id="masculino"
						name="genero" value="masculino"> <label
						class="form-check-label" for="masculino">Masculino</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" id="outros"
						name="genero" value="outros"> <label
						class="form-check-label" for="outros">Outros</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" id="prefiro_nao_dizer"
						name="genero" value="prefiro_nao_dizer"> <label
						class="form-check-label" for="prefiro_nao_dizer">Prefiro
						não dizer</label>
				</div>
			</div>
			<div class="botoes mb-5 pb-4">
				<button type="submit" class="botaop mb-2 mt-4 ml-3">Cadastrar</button>
			
					<button type="button" class="botaop ml-3"><a href="login.html">Voltar</a></button>
			</div>
		</div>

	</form>
<footer class="container-fluid">
		
				
				<p><i class="bi bi-geo-alt"></i> Petropólis Rio de Janeiro RJ </p>
				<p><i class="bi bi-telephone"></i> (21)98705-17825 </p>
				<p><i class="bi bi-envelope"></i> renato.david@aluno.recode.org.br</p>
			
					
			<p class="container text-center mt-5"><i class="bi bi-c-circle"></i> <strong>RR</strong> - Todos os direitos
				reservados</p>
		
	</footer>


	<script src="index.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
