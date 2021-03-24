<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import='java.sql.*'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="head.jsp" %>
<%@include file='checksesson.jsp'%>
</head>
<body  style="background:url('images/update.jpg'); no-repeat; background-size: cover; opacity:;">
	
<%@include file="header.jsp" %>
<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	
	<%
		String btn = request.getParameter("btnupdate");
		if (btn != null) {
			try {
				l1.conOpen();
				String ptype = request.getParameter("txtptype");
				String price = request.getParameter("txtprice");
		
				String pid = request.getParameter("pid");

				if(l1.dml("update tblpackage set ptype='" + ptype + "',price='" + price
						+ "' where pid='" + pid + "'"))
						{
					     out.println("Update data sucessfully");
						}
				else
				{
					out.println("error");
				}
				
				
			} catch (Exception ex) {

			}
		}
		try {
			l1.conOpen();

			String pid = request.getParameter("pid");
			l1.rs = l1.stmt.executeQuery("select * from tblpackage where  pid ="+pid);
			while (l1.rs.next()) {
	%>
	
	<div class="container-fluid" style="width: 525px; margin-top:125px;">
		<div class="row">
			<div class="col-md"> 
			<!-- Card -->
			<div class="w3-card-4">
			<form method="post">

				<!-- Card image -->
				<div class="w3-container w3-white">
				<table class="table">
				
		
			<tr>
			
			<br><br></div>
				<td><b>Package Type:</b></td>
				<td><input type="text" name="txtptype" class="form-control"
					value="<%out.println(l1.rs.getString("ptype"));%>" required></td>
			</tr>
			<tr>
				<td><b>Price:</b></td>
				<td><input type="text" name="txtprice" class= "form-control"
					value="<%out.println(l1.rs.getString("price"));%>" required></td>
			</tr>
			
			<td><b>Flimit:</b></td>
				<td><input type="text" name="txtflimit" class= "form-control"
					value="<%out.println(l1.rs.getString("flimit"));%>" required></td>
			</tr>
			
			<tr>
			<td colspan=2 align=center><input type="submit" class="btn btn-info" name="btnupdate" value="Update">
				</td>
			</tr>
		

		
		</table>
			</div>
		
		
</form>
	
	</div>
		</div>
		</div>
		</div>
	<%
		}
			l1.conClose();

		} catch (Exception ex) {

		}
	%>
</body>
</html>