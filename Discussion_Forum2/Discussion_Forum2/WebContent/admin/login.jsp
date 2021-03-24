<!doctype html>

<html>
	<head>
		<title> Transparent Login form </title>
		<!-- <link rel="stylesheet" href='css/style1.css'> -->
	
	<%@include file="head.jsp" %>
	</head>
	<body  style="background:url('images/g.jpg'); no-repeat; background-size: cover; opacity:;">
	<%@include file="header.jsp" %>
	
	<% 

	String btn=request.getParameter("btnlogin");

	if(btn!=null)
	{
		
		String apass=request.getParameter("txtpass");
		String aemail=request.getParameter("txtemail");
		
		if(l1.exists("select * from tbladmin where aemail='"+aemail+"' and apass='"+apass+"'"))
		{
				String aname=l1.filllabel("select * from tbladmin where aemail='"+aemail+"'", "aname");
				String aid=l1.filllabel("select * from tbladmin where aemail='"+aemail+"'", "aid");
				
				session.setAttribute("email", aemail);
				session.setAttribute("name", aname);
				session.setAttribute("aid", aid);
				
				response.sendRedirect("pinsert.jsp");
		}
		else
		{
			%>
			<script>
			alert("Error");
			</script>
			<% 
		}
	}

	%>
	
	<div class="container-fluid" style="width: 400px; margin-top:100px;">
	<div class="row">
		
		<div class="col-md-12">
		<div class="card">
		

			<img class="img-thumbnail" src="images/l.jpg" />
			<div class="card bg-light text-dark">
				<form class="form-group text-center" style="color: #757575;"
					method="post">


					<table class="table">

						<tr>
							<td><b>Email:</b></td>
							<td><input type="text" class="form-control" name="txtemail"
								class="forn-group" placeholder="Enter-Email" required></td>
						</tr>

						<tr>
							<td><b>Password:<b></td>
							<td><input type="password" class="form-control"
								name="txtpass" placeholder="Enter-password" required></td>
						</tr>


						<td colspan=3 align=center><input type="submit"
							class="btn btn-success" name="btnlogin" value="LOGIN">
						</tr>
					</table>
				</form>

			</div>
		</div>
	</div>
	</div>
	</div>
	
	</body>
</html>