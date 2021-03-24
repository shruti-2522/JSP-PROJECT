<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="head.jsp" %>
<%@include file='checksesson.jsp'%>
</head>
<body style="background:url('images/y.jpeg'); no-repeat; background-size: cover; opacity:;">
	<%@include file='header.jsp'%>
	<br><br>
	
	 <%
	
	 String btn=request.getParameter("btnadd");
	 if(btn!=null)
	 {
	 	 
	 String cname=request.getParameter("txtcname");
	
	 
	 	if(l1.dml("insert into tblcat(cname)values('"+cname+"')"))
	 	{
	 		%>
			<script>
		       window.location.href="show_cat.jsp";
			</script>
			<%
		}
		else
		{
			%>
			<script>
			alert("Error");
			</script>
			<% 
		}
	 	  
	 }

	 %>
	<div class="container" style="width: 500px; margin-top: 75px">
		<br>
		<br>
		<br>
		<div class="row">
			<div class="col-md"> 
			
			 <div class=" w3-white">
			
  			 <div class="w3-container w3-gray">
      <h1><center>Add Category</center></h1>
    </div>
			<div class="w3-card-4">
		<form class="form-group text-center" style="color: #757575;"
			method="post">
			<br><br>
		
				<table class="table">
				
					<tr>
			
						<td><b>Enter problem category :</b></prtd>
						<td>
							<div class="form-group">
								<input type="text" rows="3" name="txtcname" class="form-control"required >
							</div>
						</td>
					</tr>
					<tr>
						<td colspan=2 align=center><input type="submit" class="w3-btn w3-blue" name="btnadd" value="Add Category">
						</td>
					</tr>
					
				</table>
				
				<br>
				
				</form>
				</div>
				</div>
				</div>
				</div>

</body>

</html>