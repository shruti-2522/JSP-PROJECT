<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
<%@include file="head.jsp" %>
<%@include file='checksesson.jsp'%>
</head>
<body style="background:url('images/b.jpeg'); no-repeat; background-size: cover; opacity:;">
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
			l1.rs = l1.stmt.executeQuery("select * from tblpackage");
			while (l1.rs.next()) {
		%>
			<div class="col-md-4">
			<!-- Card -->
			<div class="card w3-panel w3-card-2">
		
			
				<!-- Card image -->
				<table class="table">
					<Tr>
						<Td><b>Package Type:</b></Td>
						<Td>
							<%
								out.println(l1.rs.getString("ptype"));
							%>
						</td>
					</tr>
					<Tr>
						<Td><b>Package price:</b></Td>
						<Td>
							<%
								out.println(l1.rs.getString("price"));
							%>
						</td>
					</tr>
					<Tr>
						<Td><b>Package Limit:</b></Td>
						<Td>
							<%
								out.println(l1.rs.getString("flimit"));
							%>
						</td>
					</tr>
					
					<tr>
						<td><a
							href="delete.jsp?pid=<%out.println(l1.rs.getString("pid"));%>"><font color="blue">Delete</font></a></td>
							<td><a
							href="update.jsp?pid=<%out.println(l1.rs.getString("pid"));%>"><font color="blue">Update</font></a></td>
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
	<br>


	
</body>
</html>