<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="head.jsp" %>
<%@include file='checksesson.jsp'%>
<title>Insert title here</title>
</head>
<body style="background:url('images/Header.jpg'); no-repeat; background-size: cover;height: 250px; opacity:;">
	<%@include file="header.jsp"%>
	<div class="container-fluid" ">
	
	
	<br><br>
	 <h1><center><b>User-Details<b></center></h1>
	</div>
<div class="row">
	<div class="col-md">
	<table class="w3-table-all">
		<thead>
			<tr class="w3-red">

				<Td><b>Name</b></Td>
				<Td><b>Password</b></Td>
				<td><b>Email</b></td>
				<tD><b>Address</b></tD>
				<tD><b>Mobile no</b></tD>
				<tD><b>Pid</b></tD>
				<tD><b>Link</b></tD>
			</Tr>
		</thead>


		<%
			try {
				l1.conOpen();

				l1.rs = l1.stmt.executeQuery("select * from tbluser");

				while (l1.rs.next()) {
		%>
		
			<!-- Card -->
			<div class="card">

				<!-- Card image -->

				<tr>

					<Td>
						<%
							out.println(l1.rs.getString("uname"));
						%>
					</td>

					<Td>
						<%
							out.println(l1.rs.getString("upass"));
						%>
					</td>

					<Td>
						<%
							out.println(l1.rs.getString("email"));
						%>
					</td>
					<Td>
						<%
							out.println(l1.rs.getString("addr"));
						%>
					</td>
					<Td>
						<%
							out.println(l1.rs.getString("mno"));
						%>
					</td>
					<Td>
						<%
							out.println(l1.rs.getString("pid"));
						%>
					</td>
					<td><a
						href="sendmail.jsp?id=<%out.println(l1.rs.getString("uid"));%>">Send
							Mail</a></td>
				</tr>

				<%
					}
						l1.conClose();
					} catch (Exception ex) {

					}
				%>
			
	</table>
	</div>
</body>
</html>