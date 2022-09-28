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
background-color:#FDEDEC;
font-family: 'Times new Roman', 'Calibri', 'sans-serif';
background-image:url("voting.jpg");
}
form{
position:relative;
top:12em;
font-size:1.2em;
width: 100%; 
}
input[type=test]{ 
        width: 30%; 
        margin: 8px 0;
        padding: 12px 20px; 
        display: inline-block; 
        border: none; 
        box-sizing: border-box; 
    }
button{
padding:5px;
border: 1em;
font-size:12px;
cursor:pointer;
}
.Submitbtn:hover{
box-shadow: inset -140px 0px 0px 0px #52BE80;
}
h2{
position:relative;
top:25px;
}
a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-decoration: none;
  display: inline-block;
}

a:hover{
  background-color: green;
}
.cancelbtn:hover{
box-shadow: inset -140px 0px 0px 0px crimson;
}
</style>
</head>
<body>
<center><h2 style="color:white">LOGIN PAGE </h2></center>
<form action="LogInServlet" method="post">
<center><b> VoterId : </b><input type="test" name="id" placeholder="Enter Voter Id" maxlength="5" class="id"><br></center>
<center><button type="sumbit" value="login" id="login" name="login">Login</center>
<center><p><button type="button"class="cancelbtn"><b> Cancel</b></button><p></center> 
<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); 
if(session.getAttribute("uname")==null){
	response.sendRedirect("UserLogin.jsp");
}

%>
</form>
</body>
</html>