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
  background-image: url("view1.jpg") ;
	background-repeat: no-repeat;
	  background-attachment: fixed;
  background-size: cover;
  color:white;
  background-color:#FDEDEC;
}
</style>
</head>
<body>
<form action="AddParty" enctype="multipart/form-data">
<div class="container">

<center><label><b>Enter party name : </b></label></center>
<center><input type="text" name="p_name"><br></center>

<center><label><b>Enter party leader : </b></label></center>
<center><input type="text" name="p_lead"><br></center>



<center><input type="submit" value="Add"></center>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("u_name")==null){
	response.sendRedirect("cpe_page.jsp");
} %>

</div>
</form>


</body>
</html>