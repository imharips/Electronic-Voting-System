<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url('101209.jpg');
font-family: 'Times new Roman', 'Calibri', 'sans-serif';
background-size:100%;

}
#home{
   position:relative;
   top:-0.9em;
   right:-50em;
}
#admin{
   position:relative;
   top:-0.9em;
   right:-57em;
}
#electoral{
   position:relative;
   top:-0.9em;
   right:-64em;
}
#user{
   position:relative;
   top:-0.9em;
   right:-70em;
  
}
h1{
position:relative;
top:1.2em;
left:-15em;
font-style:italic;
font-size:1.7em;
}
a:link, a:visited {
  background-color: #D6EAF8;
  color: #CD5C5C;
  padding: 3.5px 3.5px;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: #2ECC71;
}
h2{
font-style:italic;
font-size:1.4em;

}

</style>	
</head>
<body>
<nav class="navbar navbar-light" style="background-color: #CD6155;">
<center><h1 style="color:#FFA07A;"><b> ELECTRONIC VOTING SYSTEM</b></h1></center>
<a href="#" style="text-decoration: none;" id="home" >Home</a>
<a href="adminlogin.jsp" style="text-decoration: none;" id="admin">Admin</a>
<a href="electoral.jsp" style="text-decoration: none;" id="electoral">Electoral</a>
<a href="login.jsp" style="text-decoration: none;" id="user">User</a>
</nav>
<marquee><h3><b>Citizens above 18 are eligible to vote!!!</b></h3></marquee>
<p><h2 style="color:#34495E;"><b> Think and choose the right person who solves all your problems.</b></h2></P>
<p><h2 style="color:#34495E;"><b> ALL THE BEST!!!</b></h2></P>


</body>
</html>