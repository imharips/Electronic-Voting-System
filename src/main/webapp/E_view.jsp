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

%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>  
body{
background-image:url("view1.jpg");
background-size:100%;
font-color:white;

}

</style>
</head>
<body ba>
<table border="1" align="center">
<tr><th>electionname</th><th>electiondate</th><th>votingtime</th></tr>
<%
try{
	Connection con=DriverManager.getConnection(url,userid,pass);
	 Statement st=con.createStatement();
	String sql="select * from electiondetails";
	ResultSet rs=st.executeQuery(sql);
	while(rs.next()){


%>
<tr>

<td><%=rs.getString("electionname") %></td>
<td><%=rs.getString("electiondate") %></td>
<td><%=rs.getString("votingtime") %></td>

</tr>
<%
	}
	con.close();
}
catch(Exception e){
	e.printStackTrace();
}




%>

</table>

</body>
</html>