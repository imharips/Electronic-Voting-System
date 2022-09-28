<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.container{
<!background-color:#B7D3EE;>

}
body{

background-image:url("admin1.jpg");

}
form{
position:relative;
top:150px;
font-size:2em;
}
.adminbutton:hover{
box-shadow: inset -140px 0px 0px 0px #16A085;
}
.electoralbtn:hover{
box-shadow: inset -140px 0px 0px 0px #16A085;
}

</style>
</head>
<body>  
    <center><b><h2 style="color:#F9E79F;"> NATIONAL E-VOTING PAGE</h2></b></center>
    <form>
        <div class="container"> 
			<center><b><label style="color:#F9E79F;">Administrator&nbsp&nbsp&nbsp</label></b><a href="adminlogin.jsp"><input type="button" name="A" class= "adminbutton"value="Click here"/></a><br><br></center>
			<center></center>
			<center><b><label style="color:#F9E79F;">Electoral&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label></b><a href="electoral.jsp"><input type="button" name="E" class= "electoralbtn" value="Click here" /></a><br><br></center>
			<center></center>
			
			
       

        </div> 
    </form>   
</body>   

</html>