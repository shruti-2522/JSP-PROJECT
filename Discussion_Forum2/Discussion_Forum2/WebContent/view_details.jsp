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
<body  style="background:url('images/b.jpeg'); no-repeat; background-size: cover; opacity:;">
	<%@include file='header.jsp'%>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<div class="row">
		<div class="col-md-6">
			<!-- Card -->
			<div class="w3-card-4 w3-sand">

				<!-- Card image -->
				<table class="table">
					<Tr>
						<Td><b>Problem:<b></Td>
						</tr>
					<%
					    try{
					    	String id=request.getParameter("id");
						l1.conOpen();
						l1.rs = l1.stmt.executeQuery("select * from tblprob,tblprob1 where tblprob.pid=tblprob1.pid and tblprob1.pid="+id);
						if(l1.rs.next()) {
					%>
					<tr>
						


						<Td>
							<%
								out.println(l1.rs.getString("prob"));
							%>
						</td>

						<%}
							}
					catch(Exception e)
					{
						
					}
							l1.conClose();
						%>
					
				</table>
			</div>
		</div>
		</div>
		<br>
		<br>
		

<div class="container">
	<div class="row">
		<div class="col-md-12"  width="1000" style="float:right">
			<!-- Card -->
			<div class="w3-card-4 w3-sand" >

				<!-- Card image -->
				
				<table class="table">
					<Tr>
					
						<td><b>Solution:<b></td>
						</tr>
					<%
					    try{
					    	String pid=session.getAttribute("pid")+"";
					    	String id=request.getParameter("id");
					    	String a=l1.filllabel("select *from tblpackage where  pid="+pid, "flimit");
					    	int b=Integer.parseInt(a);
					        out.println(a);
						l1.conOpen();
						l1.rs = l1.stmt.executeQuery("select * from tblprob,tblprob1 where tblprob.pid=tblprob1.pid and tblprob1.pid="+id);
						while (l1.rs.next()) {
					%>
					<tr>
						


						<Td>
							<%
								out.println(l1.rs.getString("ans"));
							%>
						</td>

						<%}
							}
					catch(Exception e)
					{
						
					}
							l1.conClose();
						%>
					
				</table>
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
	<br>
	<br>
	<br>
	<br>
	
	

	<%@include file='footer.jsp'%>
</body>
</html>