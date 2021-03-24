<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<%@include file="head.jsp" %>
<%@include file='checksesson.jsp'%>
</head>
<body>
<%@include file="header.jsp" %>

<%
String btn=request.getParameter("btnsave");
try
{
	if(btn!=null)
	{
		l1.sendmail("ajinkyapethkar@gmail.com","Sucess","Welcome");
	}
}
catch(Exception e)
{
}

%>
<form method="post">
<div class="container-fluid" style="width: 550px; margin-top: 200px;">
<div class="row">
<div class="col-md-8">

<table>
<Tr>
<td>
<input type="submit" class="w3-btn w3-black" name="btnsave" value="Send">
</td>
</Tr>

</table>
</div>
</div>
</div>
</form>

</body>
</html>