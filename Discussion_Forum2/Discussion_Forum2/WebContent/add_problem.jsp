<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file='head.jsp'%>
<%@include file='checksesson.jsp'%>
</head>
<body   style="background:url('images/222.jpeg'); no-repeat; background-size: cover; opacity:;">

	<%@include file="header.jsp"%>
	<br>
	<br>
	<br>
	<br>
	

	<%
		l1.conOpen();
		try {
			String uid = session.getAttribute("uid") + "";
			String btn = request.getParameter("btnprob");
			if (btn != null) {

				String cid = request.getParameter("cmbcat");
				String pid = request.getParameter("pid");
				String prob = request.getParameter("txtprob");

	
		if (l1.dml("insert into tblprob(uid,cid,prob)values('" + uid + "','" + cid + "','"+ prob + "')")) 
		{
			%>
			<script>
		       window.location.href="myproblem.jsp";
			</script>
			<%
		} 
		
		else
		{
				out.println("Error");
		}

			}
	%>

	<div class="container-fluid" style="width: 550px; margin-top: 170px;">
		<div class="row">
			<div class="col-md"> 
			
	
		 <br>
			<div class="w3-card w3-white">
				<form method="post">
					<table class="table">
					<tr>
					<br><br>
							<td><b>Select category:</b></td>
							<td>
							<div class="form-Control">
								<%
									String a1 = l1.filldropdown("select * from tblcat", "cmbcat", "cname", "cid");
										out.println(a1);
								%>
								</div>
							</td>
						</tr>
						<tr>
							<td><b>Enter Problem:</b></td>
							<td>
								
									<input type="text" class="col-lg-12 form-control" name="txtprob" required>
								
							</td>
						</tr>
						
						
						<tr>
							<td colspan=2 align=center>
							
								<input type="submit"
							class="btn btn-info btn-lg" name="btnprob" value="Add"></td>
						</tr>
						
					</table>
				</form>
				</div>
				<%
					} 
		catch (Exception e) 
		{

		}
			l1.conClose();
				%>
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
	
	
	<%@include file='footer.jsp'%>
</body>
