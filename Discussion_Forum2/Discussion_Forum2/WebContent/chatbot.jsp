<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>ChatBot App</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <%@include file="head.jsp" %>
        <%@include file='checksesson.jsp'%>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/shoelace-css/1.0.0-beta16/shoelace.css">
        <link rel="stylesheet" href="assets/css/styles.css">

    </head>
    <body   style="background:url('images/df.jpeg'); no-repeat; background-size: cover; opacity:;">
      <%@include file="header.jsp" %>
      <br><br><br><br>   <br><br><br><br>   
      
      
  
        <div class="container">
		
		<script type="text/javascript">
		function abc()
		{
			var a=document.getElementById("note-textarea").value;
			alert(a);
			
			var url="show1.jsp?id="+a;
			
			window.location.href=url;
		}
		 
		</script>

          
           
                <h3><b>Chatbot</b></h3>
                <div class="input-single">
                    <textarea id="note-textarea" name="txtque" placeholder="speck or typing recognation." rows="6" class="form-control"  required></textarea>
                </div>         
                <button id="start-record-btn" title="Start Recording">Start Recognition</button>
                <button id="pause-record-btn"   name="btnshow" onclick="abc()">Pause Recognition</button>
                 
              
			
              
        </div>
        <br><br><br><br>   <br><br><br><br>
           <br><br><br>
        

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="assets/js/script.js"></script>
        <footer id="footer">
	<div class="footer-bottom">
	


				
					<div class="copyright">
						&copy; Copyright <strong>Disscussion Forum</strong>. All Rights Reserved
					</div>
					<div class="credits">
						Designed by <a href="https://bootstrapmade.com/"><b><font color="blue">Shruti_Amrutkar and Komal_Wani</font></b></a>
					</div>
				</div></div>
				
				

 
    </body>
</html>

