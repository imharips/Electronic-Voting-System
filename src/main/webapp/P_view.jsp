<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% 
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
<title>Insert title here</title>
<style>
body{
background-image:url(" view1.jpg");
background-size:100%;
}
</style>
</head>
<body>
<table border=1 align="center">
<tr>
<th>partyname</th>
<th>partyleader</th>
<th>votecount</th>
</tr>
<%
try{
	
	con=DriverManager.getConnection(url,userid,pass);
	st=con.createStatement();
	String sql="select * from partydetails";
	rs=st.executeQuery(sql);
	while(rs.next()){
%>
<tr>
<td><%=rs.getString("partyname") %></td>
<td><%=rs.getString("partyleader") %></td>
<td><%=rs.getInt("votecount") %></td>
</tr>
<%}
	con.close();
}catch(Exception e){
	e.printStackTrace();
}


%>
</table>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("u_name")==null){
	response.sendRedirect("adminlogin.jsp");
}

%>

</body>
</html>