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
<body>
<%
int a=Integer.parseInt(request.getParameter("id"));
String email=l1.filllabel("select * from tbluser where uid="+a, "email");
l1.sendmail(email, "Best Offers available", "Hurry");

%>

</body>
</html>