 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <%@include file='checksesson.jsp'%>

<%@include file='head.jsp'%>
</head>
<body style="background:url('images/p.jpg'); no-repeat; background-size: cover; class="goto-here" opacity:;">
	<%@ include file='header.jsp'%>
		<br>
	<br>
		
	<%
		String btn = request.getParameter("btnreg");

		if (btn != null) {
			String name = request.getParameter("txtname");
			String pass = request.getParameter("txtpass");
			String email = request.getParameter("txtemail");
			String addr = request.getParameter("txtaddr");
			String mno = request.getParameter("txtmno");
			String bdate= request.getParameter("txtbdate");
			
			
	
			
			if (l1.dml("insert into tbluser(uname,upass,email,addr,mno,bdate,pid)values('" + name + "','" + pass + "','"
					+ email + "','" + addr + "','" + mno + "','" + bdate + "','"+0+"')")) {
				
				l1.sendmail(email, "Sucess", "Thanking you for connectiong with us");
				
	%>
	<script>
		alert("Registeration Successfull");
		""
		window.location.href = "login.jsp";
	</script>
	<%
		} else {
	%>
	<script>
		alert("Error");
	</script>
	<%
		}
	}
	%>
	<br>
	<br>

	


	<div class="container" style="width: 550px; margin-top: 70px;">
		<div class="row">
			<div class="col-md">
				<div class="card bg-secondary text-white">
					<div class="card">
						<div class="w3-card w3-">
						<div class="card-body">
							<form class="form-group" style="color: #757575;" method="post">


								<table class="table">
									<tr>
										<td><b>Name:</b></td>
										<td colspan=5>
											<div class="form-group">
												<input type="text" class="form-control"  name="txtname"
													placeholder="Enter-Name" pattern="[a-zA-Z-]+" required>
											</div>
										</td>
									</tr>

									<tr>
										<td><b>Email:</b></td>
										<td><div class="form-group">
												<input type="text" class="form-control" name="txtemail"
													placeholder="Enter email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
											</div></td>
									</tr>

									<tr>
										<td><b>Password:</b></td>
										<td><div class="form-group">
												<input type="password" class="form-control" name="txtpass"
													placeholder="Enter-password"  required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,12}" required>
											</div></td>
									</tr>

									<tr>
										<td><b>Address:</b></td>
										<td><div class="form-group">
												<input type="text" class="form-control" name="txtaddr"
													placeholder="Enter-Address" required>
											</div></td>
									</tr>
									<tr>
										<td><b>Mobile-no:</b></td>
										<td><div class="form-group">
												<input type="text" class="form-control" name="txtmno"
													placeholder="Enter-Mobile-no" pattern="\d{10}" required
													>
											</div></td>
									</tr>
									<tr>
										<td><b>Birth Date:</b></td>
										<td><div class="form-group">
												<input type="date" class="form-control" name="txtbdate" required>
											</div></td>
									</tr>
									<tr>
							<td><b>Package type:</b></td>
							<td>
								<%
									String a1 = l1.filldropdown("select * from tblpackage", "cmbcat", "ptype", "pid");
										out.println(a1);
								%>
							</td>
						</tr>

									<tr>
										<td colspan=3 align=center><input type="submit"
											class="btn btn-info btn-lg" name="btnreg" value="Register">
									</tr>
								</table>
							</form>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>
	</div>


	<br>
	<br>
	<br>
<br>
	<br>
	


	<%@include file='footer.jsp'%>
</body>
</html>