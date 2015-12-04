<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FormData</title>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#submitclick").click(function() {
			//$().val();

			
			<!-- without jqueryPost,page redirection  -->
			
			if ($("#name").val() != "") {
				/*window.location = 'formpost.jsp?name='
						+ $("#name").val() + '&age='
						+ $("#age").val() + '&email='
						+ $("#email").val();*/

						<!-- with jqueryPost  -->
				$.post("formpost.jsp", {
					name : $("#name").val(),
					age : $("#age").val(),
					email : $("#email").val()
				}, function(data) {
					$("body").html(data);
				});

			} else {
				alert("Please Insert Name !!")
			}
		});
	});
</script>
</head>
<body>
	<!-- Name,Age and Email -->

	Name :
	<input type="text" name="name" id="name" />
	<br> Age :
	<input type="text" name="age" id="age" />
	<br> Email :
	<input type="text" name="email" id="email" />
	<button type="button" id="submitclick">click me</button>


</body>
</html>