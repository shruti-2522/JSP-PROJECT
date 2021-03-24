<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import='java.sql.*'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="header.jsp" %>
	<%
		try {
			l1.conOpen();
			String pid = request.getParameter("pid");
			if (l1.dml("delete from tblpackage where pid="+pid)) {
				
				%>
	<script>
				alert("Delete Sucessfully");
				</script>
	<% 
			} else {
				%>
	<script>
				alert("Error");
				</script>
	<% 
			}
	%>
	<%
		} catch (Exception ex) {

		}
		l1.conClose();
	%>
</body>
</html>