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
  color:black;
  background-color:#FDEDEC;
}

</style>
</head>
<body>
<form action="AddElection">
<div class="container">
<center><label>Enter election name : </label></center>
<center><input type="text" name="ename"><br></center>
<center><label>Enter election date : </label></center>
<center><input type="date" name="edate"><br></center>
<center><label>Enter voting time</label></center>
<center><input type="time" name="etime"><br></center>
<center><input type="submit" value="Add"></center>


</div>

</form>

</body>
</html>