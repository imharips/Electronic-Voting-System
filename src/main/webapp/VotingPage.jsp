<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!-- <% String id=request.getParameter("candidateid");
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/electronicvotingsystem";
String userid="root";
String pass="Qr8R$Y6X";
try{
	Class.forName(driver);
}
catch(ClassNotFoundException e){
	e.printStackTrace();
}
Connection con=null;
Statement st=null;
ResultSet rs=null;
%>-->
<style>
table, tr, th {
  border:1px solid black;
  font-size:20px;
}
table{
width:100%;
}
body{
font-family:'Times new Roman','Calibri','sans-serif';
background-color:#F9E79F;
}
button{
padding:18px;
border: none;
font-size:14px;
cursor:pointer;

}
.Submitbtn:hover{
box-shadow: inset -140px 0px 0px 0px #52BE80;
}
a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: green;
}
</style>

</head>
<body>

<table>
<form action="VotingServlet">


 <center><i><h1> NATIONAL ELECTION </h1></i></center>
 <% String v_id=(String)session.getAttribute("Voterid"); %>

<p>VoterId:${Voterid}</p>
<center><i><h2> PARTIES LIST </h1></i></center>
<marquee><i><b> Cast your vote to the right person!!!</b></i></marquee>
<table id="voters">
<tr>
<th><img src ="bjp.png"></th>
<th><p><b>BJP</b></p></th>
<th><input type ="submit" name="p_name" value="BJP" id="p_name" onClick="document.getElementId('p_name').value=this.value"><label for = "Election"></th>
</tr>
<tr>
<th><img src ="congress1.jpg"></th> 
<th><p><b>CONGRESS</b></p></th>
<th><input type="submit" name="p_name" value="Congress" id="p_name" onclick="document.getElementId('p_name').value=this.value"><label for = "Election"></th>
</tr>
<tr>
<th><img src ="dmk.jpg"></th>
<th><p><b>DMK</b></p></th>
<th><input type="submit" name="p_name" value="DMK" id="p_name" onclick="document.getElementId('p_name').value=this.value"><label for = "Election"></th>
</tr>
<tr>
<th><img src ="Admk1.jpg"></th>
<th><p><b>ADMK</b></p></th>
<th><input type="submit" name="p_name" value="ADMK" id="p_name" onclick="document.getElementId('p_name').value=this.value"><label for = "Election"></th>
</tr>
<tr>
<th><img src ="mnm.png"></th>
<th><p><b>MNM</b></p></th>
<th><input type="submit" name="p_name" value="MNM" id="p_name" onclick="document.getElementId(p_name).value=this.value"><label for = "Election"></th>
</tr>
<center><b><p> I hereby declare that my vote is casted to the right person based on my personal wish and not beacuse of anybody's completion <input type="checkbox" required> </p></b><center>

</form>
</table>



<form action="Logout"><input type="submit" value="logout"></form>
<%
if(session.getAttribute("Voterid")==null){
	response.sendRedirect("login.jsp");
}
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
%>

</body>
</html>