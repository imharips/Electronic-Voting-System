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
<style>
body{
background-image:url(" view1.jpg");
background-size:100%;
}
</style>
</head>
<body>
<table border="1" align="center">
<tr>
<th>candidateid</th>
<th>candidatename</th>
<th>dob</th>
<th>partyname</th>
<th>district</th>
<th>constituency</th>
<th>address</th>
<th>phone</th>
<th>email</th>
</tr>

<%
try{
	
	con=DriverManager.getConnection(url,userid,pass);
	st=con.createStatement();
	String sql="select * from candidatedetails";
	rs=st.executeQuery(sql);
	while(rs.next()){
%>
		
<tr>
<td><%=rs.getString("candidateid") %></td>
<td><%=rs.getString("candidatename") %></td>
<td><%=rs.getString("dob") %></td>
<td><%=rs.getString("partyname") %></td>
<td><%=rs.getString("district") %></td>
<td><%=rs.getString("constituency") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("phone") %></td>
<td><%=rs.getString("email") %></td>


</tr>
<%
	}
	con.close();
}
catch(Exception e){
	e.printStackTrace();
}

%>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("u_name")==null){
	response.sendRedirect("adminlogin.jsp");
}

%>









</table>


</body>

</html>