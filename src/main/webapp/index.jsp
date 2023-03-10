<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="head.jsp" />

  <style>
  	h2{
  		text-align:center
  	}
  </style>

<script type="text/javascript">
  
  	$(document).ready(function() {
  		
  		$(document).ready(function() {
  			$("#btn1").click( function() {
  				$("#teste").load("view/loginpart.jsp");
  			});
  			$("#btn2").click( function() {
  				$("#teste").load("view/registerpart.jsp");
  			});
  		});
  		
  	});
  
</script>

<div class="container d-flex justify-content-center mb-5">
<form>

	<button type="button"  id="btn1" class="btn btn-primary">Entrar</button>
	
	<button type="button"  id="btn2" class="btn btn-primary">Registrar</button>

</form>
</div>

<div id="teste"></div>

 <jsp:include page="bottom.jsp" />