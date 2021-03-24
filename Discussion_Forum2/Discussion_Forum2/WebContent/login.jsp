<!doctype html>

<html>
<head>
<title>Transparent Login form</title>
<link rel="stylesheet" href='assets/css/style1.css'>

<%@include file="head.jsp"%>
</head>
<body
	style="background: url('images/background.jpg'); no-repeat; background-size: cover; opacity:;">
	<%@include file="header.jsp"%>

	<%
		String btn = request.getParameter("btnlogin");

		if (btn != null) {

			String pass = request.getParameter("txtpass");
			String email = request.getParameter("txtemail");

			if (l1.exists("select * from tbluser where email='" + email + "' and upass='" + pass + "'")) {
				String name = l1.filllabel("select * from tbluser where email='" + email + "'", "uname");
				String uid = l1.filllabel("select * from tbluser where email='" + email + "'", "uid");
				String pid = l1.filllabel("select * from tbluser where email='" + email + "'", "pid");

				session.setAttribute("email", email);
				session.setAttribute("name", name);
				session.setAttribute("uid", uid);
				session.setAttribute("pid", pid);

				response.sendRedirect("myproblem.jsp");
			} else {
	%>
	<script>
		alert("Error");
	</script>
	<%
		}
		}
	%>
	<div class="loginBox">

		<img src="images/user.png" class="user">
		<h2>
		
				<font color="pale red">Login</font>
			
		</h2>
		<form>
			<p>Email:</p>
			<input type="text" name="txtemail" placeholder="Enter Email" required>
			<p>Password:</p>
			<input type="password" name="txtpass" placeholder="Enter Password"
				required> <input type="submit" name="btnlogin"
				value="sign In">


		</form>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="footer.jsp"%>

</body>
</html>