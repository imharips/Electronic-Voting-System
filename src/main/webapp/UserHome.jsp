<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>user home page</title>
<style>
#vote{
   position:relative;
   top:1em;
   right:0em;
}
#party{
   position:relative;
   top:2em;
   right:0em;
}
#election{
   position:relative;
   top:4em;
   right:0em;
}
.btn
{
  position:absolute; 
  top:2em; 
  right:2em;
}


body{
background-image:url("admine.jpeg");
background-size:100%;
}
</style>
</head>
<body>

<center><a href="login.jsp" id="vote">Vote here</a></center><br>
<center><a href="P_view.jsp" id="party">Election Results</a></center></br>
<center><a href="E_view.jsp" id="election"> Election Time</a></center></br>

<%

response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

if(session.getAttribute("uname")==null){
	response.sendRedirect("UserLogin.jsp");
}
%>
<form action="Logout" ><input type="submit" class="btn" value="Logout"></form>



</body>
</html>