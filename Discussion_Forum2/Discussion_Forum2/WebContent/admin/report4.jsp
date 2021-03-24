
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 

 
<html>
<head>
<meta charset="UTF-8">
<%@include file="head.jsp" %>
<%@include file='checksesson.jsp'%>
<%@include file="../mylib2.jsp" %>

<%
mylib2 l2=new mylib2(); 
%>
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>
<%

Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
try
{
l1.conOpen();
l1.rs=l1.stmt.executeQuery("select * from tblpackage");
int a,b;
while(l1.rs.next())
{
 		
	 a=l1.rs.getInt("pid");
	
b=l2.countlabel("select count(uname) as abc from tbluser where pid="+a,"abc");

String ptype=l2.filllabel("select * from tblpackage where pid="+a, "ptype");
map = new HashMap<Object,Object>(); map.put("label", ptype+""); map.put("y", b); map.put("exploded", true); list.add(map);
 
 }
l1.conClose();
}
catch(Exception ex)
{
	
}
String dataPoints = gsonObj.toJson(list);

%>
<br><br><br><br>
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2",
	animationEnabled: true,
	exportFileName: "New Year Resolutions",
	exportEnabled: true,
	title:{
		text: "Package"
	},
	data: [{
		type:"splineArea",
		showInLegend: true,
		legendText: "{label}",
		toolTipContent: "{label}: <strong>{y}%</strong>",
		indexLabel: "{label} {y}%",
		dataPoints : <%out.print(dataPoints);%>
	}]
});
 
chart.render();
 
}
</script>

<div id="chartContainer" style="height: 420px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

</body>
</html>                     s