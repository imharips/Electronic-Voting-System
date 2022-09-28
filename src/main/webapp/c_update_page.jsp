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
<title>Insert title here</title>
<%
try{
	
	con=DriverManager.getConnection(url,userid,pass);
	st=con.createStatement();
	String sql="select * from candidatedetails where candidateid="+id;
	rs=st.executeQuery(sql);
	while(rs.next()){
%>
</head>
<body>
<form action="C_Update_process.jsp">
<input type="hidden" name="id" value="<%=rs.getString("candidateid") %>">
<input type="text" name="id" value="<%=rs.getString("candidateid") %>">
<br>
candidate name :
<input type="text" name="name" value="<%=rs.getString("candidatename") %>"><br>
<input type="text" name="dob" value="<%=rs.getString("dob") %>"><br>
<input type="text" name="partyname" value="<%=rs.getString("partyname") %>"><br>
<input tyep="text" name="district" value="<%=rs.getString("district") %>"><br>
<input type="text" name="constituency" value="<%=rs.getString("constituency") %>"><br>
<input type="text" name="address" value=="<%=rs.getString("address") %>"><br>
<input type="text" name="phone" value="<%=rs.getString("phone") %>"><br>
<input type="text" name="email" value="<%=rs.getString("email") %>"><br>
<input type="submit" value="update">
</form>
<%
	}
	con.close();
}
catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>