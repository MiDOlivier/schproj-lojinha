  <script type="text/javascript">
  
  	$(document).ready(function() {
		$("#btnEnviar").click(function() {
			var frmData = $("#frmLogin").serialize();
			//$("#msg").html("Enviou:" + frmData);
			$.ajax({
				url: "model/respondedor.jsp", //dest
				data: frmData, //content
				type: "POST", //method
				success: function( data ) { //on success func(return) {do thing with return}
					//$("#msg").html( $("#msg").html()+"<br>Retornou:" + data);
					$("#msg").html(data);
				}
			});
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

  <h2>Entrar</h2>
  <form  id="frmLogin">
  
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Digite seu  email" name="email">
    </div>
    
    <div class="form-group">
      <label for="pwd">Senha:</label>
      <input type="password" class="form-control" id="senha" placeholder="Digite sua senha" name="senha">
    </div>
    
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Lembrar Credenciais
      </label>
    </div>
    
    <div class="d-flex justify-content-center">
    <button type="button" id="btnEnviar"class="btn btn-primary">Enviar</button>
    </div>
    
  </form>
  <div id="msg"></div>
  
</div>

</body>
</html>
