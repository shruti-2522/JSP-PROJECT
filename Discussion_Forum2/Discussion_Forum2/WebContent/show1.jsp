<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="head.jsp" %>
<%@include file='checksesson.jsp'%>
</head>
<%@include file="header.jsp" %>
<body style="background:url('images/cb1.jpg'); no-repeat; background-size: cover; opacity:;">


<div class="col-md-5.5">
<img src="images/chatbot.gif" width="900" height="900" style="float:left">


<div class="container">
<div class="row">
<div class="col-md">
<br><br><br><br><br>

<%

	String prob=request.getParameter("prob");
	String id=request.getParameter("id");
	
	//out.println(""+id);
	String a1=id.toLowerCase();
	
	out.println(a1);
	
	 if (l1.exists("select * from tblprob where prob='"+id+"'"))
	 {
		 try{
			 String pid=session.getAttribute("pid")+"";
				String a=l1.filllabel("select *from tblpackage where  pid="+pid, "flimit");
				int b=Integer.parseInt(a);
				out.println(a);
				
				l1.conOpen();
				l1.rs = l1.stmt.executeQuery("select * from tblprob,tblprob1 where tblprob.pid=tblprob1.pid and tblprob.prob='"+id+"' limit "+a);
				while (l1.rs.next()) {
					
			%>
			
			<div class="col-md">
			<div class="w3-card-4" style="width:100%;">
			<table class="table">
							<Tr>
								<td><b>Solution:<b></td>
								</tr>
			<tr>
				<Td>
					<%
						out.println(l1.rs.getString("ans"));
					%>
				</td>
				</tr>
				</table>
				</div>
				</div>

				<%
				}
		 }
			
			     catch(Exception e)
			     {
			    	 
			     }
			
			l1.conClose();
		 }
		 //out.println("Sucess");
	 
	 else
	 {
		 String btn=request.getParameter("btnadd");
		 if(btn!=null)
		 {
			String cid=request.getParameter("cmbcat");
		    String uid = session.getAttribute("uid")+"";
		    if (l1.dml("insert into tblprob(uid,cid,prob)values('" + uid + "','" + cid + "','"+ a1 + "')")) 
		 	{
		 		out.println("Add problem sucessfully");
			}//end if(l1.dml)
			else
			{
				%>
				<script>
				alert("Error");
				</script>
				<% 
			}//end else
		 }
		 	%>
		 	
		 	<div class="container-fluid">
			<div class="col-md" style="width:90%">
			<div class="w3-card-4">
		 	<form method="post">
		 	<table>
		 	<tr>
		 	<td>
		 	<b>
		 	Select Categeory:</b>
		 	</td>
		 	<td>
		 	<br>
		 	<div class="form-group">
		 	<%
		 	 String a=l1.filldropdown("select * from tblcat","cmbcat","cname","cid");
		 	out.println(""+a);
		 	%>
		 	</div>
		 	</td>
		 	</tr>
		 	<td colspan=2 align=center><input type="submit" class="btn btn-success" name="btnadd" value="Add que"  required>
		 	</td>
		 	<tr>
		 	</tr>
		 	</table>
		 	</form>
		 	</div>
		 	</div>
		 	</div>
		 	<%
		 
		 }//end else
	 
		 //out.println("Error");
	 
%>
</div>
</div>

</div></div>

<%@include file="footer.jsp"%>
</body>
</html>