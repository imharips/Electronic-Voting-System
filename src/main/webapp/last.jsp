<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background-color:#E2C3C3;
background-image:url("government.jpg");
background-size: 100%;
}
</style>
</head>
<body>

<center><p><h1 style="color:#943126;">Your vote has been recorded. Thank You!!!</h1><p></center>
<marquee><h2  style="color:#7D6608;"> Election results will be announced and updated in the site soon ... <h2></marquee>
<embed src="bleep.mp3" autostart="true" width="2" height="3">

<form action="Logout"><input type="submit" value="logout"></form>
<%if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
} 
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

%>


</body>
</html>