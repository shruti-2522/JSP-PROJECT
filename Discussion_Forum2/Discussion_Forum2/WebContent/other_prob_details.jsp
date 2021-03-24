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
<body style="background:url('images/a26.jpeg'); no-repeat; background-size: cover; opacity:;">
	<%@include file='header.jsp'%>
	
	<br>
	<br>
	<br>
	
	
	<%
			l1.conOpen();
	try{
			String btn = request.getParameter("btnans");
			String id = request.getParameter("id");
            
			if (btn != null) {
				String uid = session.getAttribute("uid")+"";
				String ans=request.getParameter("txtans");
			if(l1.dml("insert into tblprob1(pid,uid,ans)values('"+id+"','"+uid+"','"+ans+"')"))
			{
				%>
				<script>
			       window.location.href="show2.jsp";
				</script>
				<% 
			}
			else
			{
				out.println("error");
			}
			
	} 
	l1.rs = l1.stmt.executeQuery("select * from tblprob where pid=" +id); 
	if (l1.rs.next())
	{ 
	%>
	<div class="container-fluid" style="width: 550px; margin-top: 150px;">
		<div class="row">
			<div class="col-md"> 
			
			<div class="w3-panel w3-light blue">
			
    			<br>
			<div class="w3-card">
					<!-- Card image -->
					<form method="post">
						<table class="table">

							<Tr>
								<Td><b>Enter Problem:</b></Td>
								<Td>
									<%
									out.println(l1.rs.getString("prob"));
								%>
								</td>
							<tr>
								<td><b>Enter solution:</b></td>
								<td><br>
									<div class="form-group">
										<textarea class="md-textarea form-control" rows="3"
											name="txtans" required ></textarea>
									</div></td>
							</tr>
							<tr>
								<td colspan=2 align=center><input type="submit"
									name="btnans" value="ANSWER" class="btn btn-success"></td>
									<tr>
						
						</table>
					</form>
				</div>
			</div>
		</div>
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

<%@include file='footer.jsp'%>
</body>
</html>