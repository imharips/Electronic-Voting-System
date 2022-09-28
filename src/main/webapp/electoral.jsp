<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  font-family: Calibri, Times new Roman, sans-serif;
  padding: 120px;
  font-size: 1em;
  font-weight: normal;
  background-repeat:no-repeat;
  background-size: 100% 100%;

  
  
}
.container {
	padding: 25px;
	marigin: 10px;<!inner box>

	
}
label{
font-size: 22px;
color:Black;
}
input[type=text] { 
        width: 50%; 
        margin: 8px;
        padding: 12px; 
        display: inline-block; 
        border: 2px solid black; 
    
    }
.pass{
         width: 50%; 
        margin: 8px;
        padding: 12px; 
        display: inline-block; 
        border: 2px solid black; 
    
    }
h1{
color: #1ABC9C;
}
.Login:hover{
box-shadow: inset -140px 0px 0px 0px #52BE80;
}
.cancelbtn:hover{
box-shadow: inset -140px 0px 0px 0px crimson;
}

</style>

</head>
<Body background="electoral.jpg" width=100%;>  
<body>  
    <center> <h1 style="color:Black;"><b>ELECTORAL OFFICER LOGIN FORM </b></h1> </center> 
    <form action="ElectoralServlet" method="post">
        <div class="container"> 
            <center><label><b>UserID : </b></label></center> 
            <center><input type="text" placeholder="Enter UserId" name="UserId" required><br></center>
            <center><label><b>Password : </b></label> </center>
            <center><input type="password" placeholder="Enter Password" name="Password" class="pass" required><br></center>
			<center><a href="#" style="color: teel">Forgot Password</a><br></center><br>
            <center><p><button type="submit" class="Login"><b>Login</b></button><p></center> 
            <center><p><input type="checkbox" checked="checkbox"><b> Remember me</b></p></center> 
            <center><p><button type="button" class="cancelbtn"><b> Cancel</b></button><p></center> 
			

        </div> 
    </form>   
    <%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate"); %>
</body>   
</html>