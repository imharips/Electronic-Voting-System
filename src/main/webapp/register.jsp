<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
  font-family: Calibri, Times new Roman, sans-serif;
  padding: 120px;
  font-size: 1em;
  font-weight: normal;
  background-image: url("voting.jpg") ;
	background-repeat: no-repeat;
	  background-attachment: fixed;
  background-size: cover;
  color:white;
  background-color:#FDEDEC;
}
.container {
	padding: 25px;
	marigin: 10px;<!inner box>

	
}
label{
font-size: 22px;
color:white;
}
input[type=text], input[type=password], input[type=textarea], input[type=date] ,input[type=number] { 
        width: 25%; 
        margin: 8px;
        padding: 12px; 
        display: inline-block; 
        border: 2px solid black; 
    
    }
h1{
color: white;
}


</style>

</head>  
<Body >  
<body >  
    <center> <h1 style="color:white"><b> REGISTRATION FORM </b></h1> </center> 
    <form action="RegServlet" method="get">
        <div class="container"> 
            <center><label><b>User Id : </b></label></center> 
            <center><input type="text" placeholder="Enter Your User Id" name="UserId" required><br></center>
            <center><label><b>Password : </b></label> </center>
            <center><input type="password" placeholder="Enter Password" name="Password" required><br></center>
            
			<center><label><b>First Name : </b></label></center> 
            <center><input type="text" placeholder="Enter Your First Name" name="FirstName" required><br></center>
			<center><label><b>Last Name : </b></label></center> 
            <center><input type="text" placeholder="Enter Your Last Name" name="LastName" required><br></center>
			
            <center><label><b>Age : </b></label> </center>
            <center><input type="text" placeholder="Enter Age" name="Age" required><br></center>
			
			<center><label><b>Gender : </b></label>
			<input type="radio" name="gender" value="male"> Male
			<input type="radio" name="gender" value="female"> Female
			 
			</center>
			
			<center><label><b>Address : </b></label> </center>
            <center><input type="textarea" placeholder="Enter Your Address" name="Address" required><br></center>
			<center><label><b>Phone Number : </b></label> </center>
            <center><input type="number" placeholder="Enter Phone Number" name="PhoneNumber" maxlength="10" required><br></center>
			<center><label><b>District : </b></label> </center>
            <center><input type="text" placeholder="Enter District" name="District" required><br></center>
			<center><label><b>Constituency : </b></label> </center>
            <center><input type="text" placeholder="Enter Contituency" name="Constituency" required><br></center>
			
			<center><label><b>Date of Birth : </b></label></center> 
            <center><input type="date"  name="dob" required><br></center>
			 
           
            <center><b><input type="submit" value="Register"/></b></a><br><br></center> 
		
            <center><button type="button"class="cancelbtn"><b> Cancel</b></button> </center> 
			

        </div> 
    </form>   
</body>   
</html>