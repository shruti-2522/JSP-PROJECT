<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Hello <%out.println(session.getAttribute("name")+""); %>,
<br>
Your EMail is <%out.println(session.getAttribute("email")+""); %>
</body>
</html>