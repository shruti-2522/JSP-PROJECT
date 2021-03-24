<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file='head.jsp'%>
<%@include file='checksesson.jsp'%>
</head>
<body style="background:url('images/pkg.jpg'); no-repeat; background-size: cover; opacity:;">
	<%@include file="header.jsp"%>
	<br>
	<br>
	<br>
	<br>
	
	<%
		l1.conOpen();
		try {
			String uid = session.getAttribute("uid") + "";
			String btn = request.getParameter("btnadd");
			if (btn != null) {

				String pid = request.getParameter("cmbcat");
				String sdate = request.getParameter("txtsdate");
				String edate = request.getParameter("txtedate");

				if (l1.dml("update tbluser set pid='" + pid + "' where uid='" + uid + "'")) 
				{
					out.println(" update sucessfully");

				} 
				else
				{
					out.println("error");
				}
	%>

	<%
		if (l1.dml("insert into tblpay(uid,pid,sdate,edate)values('" + uid + "','" + pid + "','" + sdate
						+ "','" + edate + "')")) {
					out.println("add sucessfully");
				} else {
	%>
	<script>
		alert("Error");
	</script>
	<%
		}

			}
	%>


	<div class="container-fluid" style="width: 550px; margin-top: 150px;">
		<div class="row">
			<div class="col-md">
			<div class="w3-panel w3-card-4 w3-Tawny
Port
			">
				<form method="post">
					<table class="table">
						<tr>
						<br><br>
							<td><b>Enter Start Date:</b></td>
							<td>
								<div class="form-group">
									<input type="date"  class="col-lg-12 form-control" name="txtsdate" required>
								</div>
							</td>
						</tr>
						<tr>
							<td><b>Enter End Date:</b></td>
							<td>
								<div class="form-group">
									<input type="date" class="col-lg-12 form-control" name="txtedate" required>
								</div>
							</td>
						</tr>
						<tr>
							<td><b>Select package:</b></td>
							<td>
								<%
									String a1 = l1.filldropdown("select * from tblpackage", "cmbcat", "ptype", "pid");
										out.println(a1);
								%>
							</td>
						</tr>
						<tr>
							<td colspan=2 align=center><input type="submit"
								class="btn btn-info btn-lg" name="btnadd" value="Add"></td>
						</tr>
						<tr>
						<td>
						<a href="online_payment.jsp">Pay Now</a>
						</td>
						</tr>
					</table>
				</form>
				<%
					} catch (Exception e) {

					}
					l1.conClose();
				%>
			</div>


		</div>
	</div>
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
	<%@include file='footer.jsp'%>
</body>
</html>