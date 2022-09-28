<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% String id=request.getParameter("candidateid");
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
%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter ID generate</title>
<style>
body{
background-image:url(" view1.jpg");
background-size:100%;
}
.btn
{
  position:absolute; 
  top:2em; 
  right:2em;
}
</style>
</head>
<body>

<table border="1" align="center"><tr>
<th>userid</th>
<th>pass</th>
<th>firstname</th>
<th>lastname</th>
<th>age</th>
<th>gender</th>
<th>address</th>
<th>phone</th>
<th>constituency</th>
<th>district</th>
<th>dob</th>
</tr>
<%
try{
	
	con=DriverManager.getConnection(url,userid,pass);
	st=con.createStatement();
	String sql="select userid,pass,firstname,lastname,age,gender,address,phone,constituency,district,voterid,dob from userdetails";
	rs=st.executeQuery(sql);
	while(rs.next()){
		if(rs.getString("voterid")==null){
			
		
	String s=rs.getString("userid");
	session.setAttribute("uname",s);
%>
<tr>
<td><%=rs.getString("userid") %></td>
<td><%=rs.getString("pass") %></td>
<td><%=rs.getString("firstname") %></td>
<td><%=rs.getString("lastname") %></td>
<td><%=rs.getString("age") %></td>
<td><%=rs.getString("gender") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("phone")%></td>
<td><%=rs.getString("constituency") %></td>
<td><%=rs.getString("district") %></td>
<td><%=rs.getString("dob") %></td>
<td><form action="Generate"><button type="submit" name="user" id="user" value=s onclick="document.getElementId('user').value=this.value" >generate</button></form></td>
</tr>
<%
		}
	}
	con.close();
}
catch(Exception e){
	e.printStackTrace();
}

%>

</table>
<form action="Logout"><input type="submit" class="btn" value="logout"></form>
<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("uname")==null){
	response.sendRedirect("electoral.jsp");
}

%>

</body>
</html>