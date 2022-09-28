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

<form action="CandidateServlet">
<div class="container">

<center><label><b>Enter candidate id: </b></label></center>
<center><input type="text" name="cid"><br></center>

<center><label><b>Enter candidate name : </b></label></center>
<center><input type="text" name="cname"><br></center>
<center><label><b>Enter Date of birth : </b></label></center>
<center><input type="date" name=dob><br></center>
<center><label><b>Enter party name : </b></label></center>
<center><input type="text" name="cparty"><br></center>
<center><label><b>Enter district : </b></label></center>
<center><input type="text" name="cdistrict"><br></center>
<center><label><b>Enter constituency : </b></label></center>
<center><input type="text" name="cons"><br></center>
<center><label><b>Enter address : </b></label></center>
<center><input type="text" name="address"><br></center>
<center><label><b>Enter phone number : </b></label></center>
<center><input type="text" name="cphone"><br></center>
<center><label><b>Enter candidate email : </b></label></center>
<center><input type="text" name="email"><br></center>
<center><input type="submit" value="add"></center>
</div>
</form>

</body>
</html>