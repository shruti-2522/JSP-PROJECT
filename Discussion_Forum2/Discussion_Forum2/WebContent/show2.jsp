<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
        <%@include file='checksesson.jsp'%>

<%@include file="head.jsp"%>
</head>
<body style="background:url('images/s20.jpeg'); no-repeat; background-size: cover; opacity:;">
	<%@include file='header.jsp'%>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br><br>
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
				l1.rs = l1.stmt.executeQuery("select * from tblprob1 where uid ="+uid);
				while (l1.rs.next()) {
		%>
		<div class="col-md-4">
			<!-- Card -->
			<div class="card">

				<!-- Card image -->
				<table class="table">
				<Tr>
				
						
					<Tr>
						<Td><b>Enter solution:</b></Td>
						<Td>
							<%
								out.println(l1.rs.getString("ans"));
							%>
						</td>
					</tr>
					
					
				</table>
			</div>
		</div>


		<!-- Card -->
		<%
			}}
		catch(Exception e)
		{
			
		}
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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br><br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<br>
	<br>

<%@include file='footer.jsp'%>
</body>
