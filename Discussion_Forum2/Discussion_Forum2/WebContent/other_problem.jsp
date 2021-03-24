<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
<%@include file='head.jsp'%>
<%@include file='checksesson.jsp'%>
</head>
<body style="background:url('images/o22.jpg'); no-repeat; background-size: cover; opacity:;">>
	<%@include file='header.jsp'%>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
<%
	String uid = session.getAttribute("uid")+"";
	%>
	<div class="row">
		<%
		    try{
			l1.conOpen();
			l1.rs = l1.stmt.executeQuery("select * from tblprob where  uid !="+uid);
			while (l1.rs.next()) {
		%>
		<div class="col-md-4">
			<!-- Card -->
			<div class="card w3-panel w3-card-2">
		

				<!-- Card image -->
				<table class="table">
					<Tr>
						<Td><b>Problem:</b></Td>
						<Td>
							<%
								out.println(l1.rs.getString("prob"));
							%>
						</td>
					</tr>
					<tr>
						<td><a
							href="add_ans.jsp?id=<%out.println(l1.rs.getString("pid"));%>"><font color="text-red">Add ans</font>
								</a></td>
								<td>
							
					</tr>
			
				</table>
			</div>
		</div>


		<!-- Card -->
		<%
			}}
		catch(Exception e)
		{}
			l1.conClose();
		%>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br><br><br>
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