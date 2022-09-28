<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#addcandidate{
   position:relative;
   top:-1em;
   right:0em;
}
#addparty{
   position:relative;
   top:1em;
   right:0em;
}
#addelection{
   position:relative;
   top:3em;
   right:0em;
}
#viewcandidate{
   position:relative;
   top:1em;
}
#viewparty{
   position:relative;
   top:6em;
}
#viewelection{
   position:relative;
   top:8em;
}
.btn
{
  position:absolute; 
  top:2em; 
  right:2em;
}


body{
background-image:url("admine.jpeg");
background-size:100%;
}
</style>
</head>
<body>
<a href="P_view.jsp" id="viewparty" >View Party Details</a><br>
<a href="C_View.jsp" id="viewcandidate" >View Candidate Details</a><br>
<a href="E_view.jsp" id="viewelection">View Election Details</a>
<center><a href="AddParty.jsp" id="addcandidate">Add party details</a></center><br>
<center><a href="AddCandidate.jsp" id="addparty">Add candidate details</a></center></br>
<center><a href="AddElection.jsp" id="addelection">Add election details</a></center></br>


<%

response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");

if(session.getAttribute("u_name")==null){
	response.sendRedirect("adminlogin.jsp");
}
%>
<form action="Logout" ><input type="submit" class="btn" value="Logout"></form>



</body>
</html>