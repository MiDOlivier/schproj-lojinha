<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seta a porra do Session</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  
  $(document).ready(function() {
		$("#submit").click(function() {
			var frmData = $("#frmLogin").serialize();
			$.ajax({
				url: "session.jsp",
				data: frmData,
				type: "POST",
				success: function( data ) {
					$("#msg").html(data);
				}
			});
		});
	});
  
  </script>
</head>
<body>
<form action="" id="frmLogin" method="get">
	<input type="text" name="usuario">
	<input type="text" name="senha">
	<input id="submit" type="button" value="Declarar Usuario">
</form>
<div id="msg"></div>

</body>
</html>