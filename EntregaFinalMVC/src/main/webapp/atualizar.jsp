<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/x-icon" href=".img/icon/favicon.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="index.css">
<title>Update</title>
</head>
<body>
    <!-- Cabeçalho -->
    <header>
    <nav class="navbar navbar-expand-lg bg-body-light" id="nav">
			<div class="container-fluid bg-nav box">
				<a class="navbar-brand" href="#"><img
					class="img-fluid st teste-img" src="./img/logo_preto.png"
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
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<h1 class="m-auto me-5  mb-lg-2 fs-2 gap-5 " >Atualizar de Cliente</h1>
				<form class="mt-5" action="UpdateController" method="post">
				<div class="form-group">
						<label for="nome">ID:</label> <input type="text"
							class="form-control" id="usuarioId" name="usuarioId" value="${usuario.usuarioId}" readonly>
					</div>
		
			<div class="form-group">
				<label for="primeiroNome">Primeiro Nome:</label> <input type="text" value="${usuario.primeiroNome}"
					class="form-control" id="primeiroNome" name="primeiroNome"required>
			</div>
			<div class="form-group">
				<label for="rgCpf">RG / CPF :</label> <input type="text" value="${usuario.rgCpf}"
					class="form-control" id="rgCpf" name="rgCpf"required>
			</div>
			<div class="form-group">
				<label for="email">E-mail:</label> <input type="email" value="${usuario.email}"
					class="form-control" id="email" name="email"required>
			</div>
			<div class="form-group">
				<label for="celular">Celular:</label> <input type="tel"value="${usuario.celular}"
					class="form-control" id="celular" name="celular"required>
			</div>
			<div class="form-group">
				<label for="senha">Senha:</label> <input type="password"value="${usuario.senha}"
					class="form-control" id="senha" name="senha"required>
			</div>
			<div class="form-group">
				<label for="confirmeSenha">Confirme sua Senha:</label> <input value="${usuario.confirmeSenha}"
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
					<input class="form-check-input" type="radio" id="genero"
						name="genero" value="prefiro não dizer"> <label
						class="form-check-label" for="prefiro_nao_dizer">Prefiro
						não dizer</label>
				</div>
			</div>
					<button type="submit" class="btn btn-primary">Atualizar</button>
				</form>
			</div>
		</div>
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