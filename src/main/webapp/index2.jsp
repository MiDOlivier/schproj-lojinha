<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery-3.6.0.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript">
  	$(document).ready(function() {
		$("#btn1").click( function() {
			$("#teste").html("AAA");
		});
		$("#btn2").click( function() {
			$("#teste").html("BBB");
		});
	});
  
  </script>
	
</head>

<body>


<button type="button"  id="btn1" class="btn btn-primary">Teste1</button>
<button type="button"  id="btn2" class="btn btn-primary">Teste2</button>
<div id="teste"></div>

</body>
</html>