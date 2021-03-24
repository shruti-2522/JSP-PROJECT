 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="head.jsp" %>
<%@include file='checksesson.jsp'%>
<title>Insert title here</title>
</head>
<body  style="background:url('images/l.jpeg'); no-repeat; background-size: cover; opacity:;">
	<%@include file="header.jsp"%>
	
	<%
		String btn = request.getParameter("btnadd");
		if (btn != null) {
			String ptype = request.getParameter("txtptype");
			String price = request.getParameter("txtprice");
			String flimit = request.getParameter("txtflimit");

			if (l1.dml("insert into tblpackage(ptype,price,flimit)values('" + ptype + "','" + price + "','" + flimit
					+ "')")) {
	%>
	<script>
		window.location.href = "show.jsp";
	</script>
	<%
		} else {
	%>
	<script>
		alert("Error");
	</script>
	<%
		}
	}
	%>
	<div class="container-fluid" style="width: 550px; margin-top:200px;">
		<div class="row">
			<div class="col-md"> 
			
			<!-- <div class="w3-panel"> -->
			
  			
			<div class="w3-card-4 w3-white">
					<form method="post">

						<table class="table">
							
							<tr>
							<br><br>
								<td><b>Package Type:</b></td>

								<td><input type="text" name="txtptype"  class="form-control" required ></td>
							</tr>

							<tr>
								<td><b>Price:</b></td>
								<td><input type="text" name="txtprice"  class="form-control" required></td>
							</tr>
							<tr>
								<td><b>Package Limit:</b></td>
								<td><input type="text" name="txtflimit" class="form-control" required></td>
							</tr>
							<Tr>

								<td colspan=3 align=center><input type="submit"
									name="btnadd" class="btn btn-info btn-lg" value="Add"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>



</body>
</html>