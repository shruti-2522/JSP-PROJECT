<header id="header">
    <div class="container-fluid">
<nav class="navbar navbar-inverse  navbar-fixed-top"> 
 <div class="navbar-header">
 <ul class="nav nav-pills navbar-right">
 
 
			<li><a href="admin/login.jsp"><font color="pel blue"><span
					class="glyphicon glyphicon-user"></font></span><font color="Red">Admin</font></a></li>
					
 
          <li class="menu-active"><a href="index.jsp"><font color="pel blue"><span class="glyphicon glyphicon-home"></span></font><font color="Red">Home</font></a></li>
          <%
         
          try
          {

          if(session.getAttribute("uid")==null)
          {
          %>
          
          <li><a href="register.jsp"><font color="pel blue"><span class="glyphicon glyphicon-user"></span></font><font color="red">Register</font></a></li>
          <li><a href="login.jsp"><font color="pel blue"><span class="glyphicon glyphicon-log-out"></span></font><font color="red">Login</font></a></li>
         
      <%
}
else
{
if(session.getAttribute("uid")!=null)
{
%>

          <li><a href="add_problem.jsp"><font color="pel blue"><span class="glyphicon glyphicon-plus"></span></font><font color="red">Add_prob</font></a></li>
          <li><a href="other_problem.jsp"><font color="pel blue"><span class="glyphicon glyphicon-plus-sign"></span></font><font color="red">Other_prob</font></a></li>
          
          <li><a href="chatbot.jsp"><font color="pel blue"><span class="glyphicon glyphicon-exclamation-sign"></span></font><font color="red">Chatbot</font></a></li>
          <li><a href="select_package.jsp"><font color="pel blue"><span class="glyphicon glyphicon-ok"></span></font><font color="red">Select_package</font></a></li>
     	  
         <li><a href="logout.jsp"><font color="pel blue"><span class="glyphicon glyphicon-log-out"></span></font><font color="red">Logout</font></a></li>
                   
        </ul>
        
<%
}

}
}
catch(Exception ex)
{
out.println("Hello");
%>

<%

}
%>

         </div>
      </nav><!-- #nav-menu-container -->
      </div>
     
      </header>