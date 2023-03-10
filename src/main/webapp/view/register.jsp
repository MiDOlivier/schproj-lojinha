<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript">
  
  	$(document).ready(function() {
		$("#btnEnviar").click(function() {
			var frmData = $("#frmLogin").serialize();
			$("#msg").html("Enviou:" + frmData);
			$.ajax({
				url: "../model/regAnswer.jsp", //dest
				data: frmData, //content
				type: "POST", //method
				success: function( data ) { //on success func(return) {do thing with return}
					$("#msg").html( $("#msg").html()+"<br>Checa o banco.");
				}
			});
		});
	});
  
  </script>
</head>
<body>

<div class="container">

  <h2>Criar Usuario</h2>
  <form  id="frmLogin">
  
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Digite seu  Email" name="email">
    </div>
    
    
    <!-- <div class="form-group">
      <label for="pwd">Senha:</label>
      <input type="password" class="form-control" id="senha" placeholder="Digite sua Senha" name="senha">
    </div>
    -->
    
    <div class="form-group">
      <label for="pwd">Nome:</label>
      <input type="text" class="form-control" id="nome" placeholder="Digite seu Nome" name="nome">
    </div>
    
    <div class="form-group">
      <label for="pwd">Cpf:</label>
      <input type="text" class="form-control" id="cpf" placeholder="Digite seu CPF" name="cpf">
    </div>
    
    <div class="form-group">
      <label for="pwd">Endereço:</label>
      <input type="text" class="form-control" id="endereco" placeholder="Digite seu Endereço" name="endereco">
    </div>
    
    <div class="form-group">
      <label for="pwd">Bairro:</label>
      <input type="text" class="form-control" id="bairro" placeholder="Digite seu Bairro" name="bairro">
    </div>
    
    <div class="form-group">
      <label for="pwd">Cidade:</label>
      <input type="text" class="form-control" id="cidade" placeholder="Digite sua Cidade" name="cidade">
    </div>
    
    <div class="form-group">
      <label for="pwd">Uf:</label>
      <input type="text" class="form-control" id="uf" placeholder="Digite seu Telefone" name="uf">
    </div>
    
    <div class="form-group">
      <label for="pwd">Cep:</label>
      <input type="text" class="form-control" id="cep" placeholder="Digite seu CEP" name="cep">
    </div>
    
    <div class="form-group">
      <label for="pwd">Telefone:</label>
      <input type="text" class="form-control" id="telefone" placeholder="Digite seu Telefone" name="telefone">
    </div>
    
    <input type="hidden" class="form-control" id="idUsuario" value="" name="idUsuario">
    
    <input type="hidden" class="form-control" id="idNivelUsuario" value="" name="idNivelUsuario">
    
    <input type="hidden" class="form-control" id="foto" value="placeholder" name="foto">
    
    <input type="hidden" class="form-control" id="ativo" value="N" name="ativo">
    
     <input type="hidden" class="form-control" id="senha" value="" name="senha">
    
    <button type="button"  id="btnEnviar"class="btn btn-primary">Enviar</button>
    
  </form>
  <div id="msg"></div>
  
</div>

</body>
</html>