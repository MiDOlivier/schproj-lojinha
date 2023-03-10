  <script type="text/javascript">
  
  	$(document).ready(function() {
		$("#btnEnviar").click(function() {
			var frmData = $("#frmLogin").serialize();
			$("#msg").html("Enviou:" + frmData + "<br>");
			$.ajax({
				url: "model/regAnswer.jsp", //dest
				data: frmData, //content
				type: "POST", //method
				success: function( data ) { //on success func(return) {do thing with return}
				//	$("#msg").html( $("#msg").html()+"<br>Checa o banco.");
					$("#msg").html(data);
				}
			});
		});
		
		$("#imgPreview").click(function () {
  			$("#inputFile").trigger('click');
  		});
  		
  		$("#inputFile").change(function (event) {
  	  		var file = event.target.files[0];
  	  		var reader = new FileReader();
  	  		reader.readAsDataURL(file);
  	  		reader.onload = function () {
  	  			var imgBase64 = reader.result;
  	  			console.log(imgBase64);
  	  			$("#imgPreview").attr("src", imgBase64);
  	  			$("#foto").val(imgBase64);
  	  			uploadFile();
  	  		};
  	  		reader.onerror = function (error) {
  	  			console.log("Error: ", error);
  	  		};
  	  	});		
		
	});
  
  </script>
  
    <style type="text/css">
  	#imgPreview{
  		height: 150px;
  		width: 150px;
  		background-color: gray;
  	}
  </style>

<div class="container">

  <h2>Registrar</h2>
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
    
    <input type="hidden" class="form-control" id="ativo" value="N" name="ativo">
    
     <input type="hidden" class="form-control" id="senha" value="" name="senha">
     
    <img id="imgPreview" alt="Carregar Imagem" src="">
	<br>
	<input type="hidden" id="foto" name="foto" value="">
    
    <div class="d-flex justify-content-center">
    <button type="button"  id="btnEnviar"class="btn btn-primary">Enviar</button>
    </div>
    
    
  </form>
  <input type="file" id="inputFile" name="inputFile" style="display: none;">
  <div id="msg"></div>
  
</div>

</body>
</html>