%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>ChatBot App</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/shoelace-css/1.0.0-beta16/shoelace.css">
<link rel="stylesheet" href="styles.css">
<%@include file="head.jsp" %>
</head>
<body>
<%@include file="header.jsp" %>

<br><br><br><br>
	<%
    String btn=request.getParameter("btnshow");
    
    {
    	String text1=request.getParameter("text");
    	if(btn!=null)
    	{
    		out.println("text1");
    	}
    }
    %>
	<div class="container">
		<form action="post">

			<table class="table">
				<tr>
					<td>Add problem:</td>
					<td><textarea id="note-textarea" name="text"
							placeholder="speck or typing recognation." rows="6"></textarea></td>
				</tr>
				<tr>
					<td><input type="button" name="start"
						value="start recoganation"></td>
					<td><input type="button" name="btnshow"
						value="pause recoganation"></td>
				</tr>
			</table>
		</form>



		<!--  <h3>Add Problem</h3>
                <div class="input-single">
                    <textarea id="note-textarea" name="text" placeholder="speck or typing recognation." rows="6"></textarea>
                </div>         
                <button id="start-record-btn" title="Start Recording">Start Recognition</button>
                <button  name="btnshow">Pause Recognition</button>
                <button id="save-note-btn" title="Add problem">Add Problem</button>   
              
               -->



	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="script.js"></script>

	<!-- Only used for the demos ads. Please ignore and remove. -->
	
	
	
	<br><br><br><br>

<%@include file="footer.jsp" %>>
</body>
</html>


