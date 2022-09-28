<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%!String driver="com.mysql.jdbc.Driver"; %>
<%!String url="jdbc;mysql://localhost:3306/electronicvotingsystem"; %>
<%!String user="root"; %>
<%!String pass="Qr8R$Y6X"; %>

<%
String id=request.getParameter("id");
String c_name=request.getParameter("name");
String dob=request.getParameter("dob");
String p_name=request.getParameter("partyname");
String district=request.getParameter("district");
String constituency=request.getParameter("constituency");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String email=request.getParameter("email");
if(id!=null){
	Connection con=null;
	PreparedStatement st=null;
	try{
		Class.forName(driver);
		con=DriverManager.getConnection(url,user,pass);
		String sql="update candidatedetails set candidateid=?,candidatename=?,dob=?,partyname=?,district=?,constituency=?,address=?,phone=?,email=?";
		st=con.prepareStatement(sql);
		st.setString(1,id);
		st.setString(2,c_name);
		st.setString(3,dob);
		st.setString(4,p_name);
		st.setString(5,district);
		st.setString(6,constituency);
		st.setString(7,address);
		st.setString(8,phone);
		st.setString(9,email);
		int i=st.executeUpdate();
		if(i>0){
			out.print("Record updated successfully ...");
		}
		else{
			out.println("There is a problem ...");
		}
	}
	catch(Exception e){
		e.printStackTrace();
	}
}
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>