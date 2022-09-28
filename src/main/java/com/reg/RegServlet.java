package com.reg;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;

import com.reg.voteid.VoterIdGen;

@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid=request.getParameter("UserId");
		String password=request.getParameter("Password");
		String firstName=request.getParameter("FirstName");
		String lastName=request.getParameter("LastName");
		String age=request.getParameter("Age");
		int ag=Integer.parseInt(age);
		
		
		String gender=request.getParameter("gender");
	
		String address=request.getParameter("Address");
		String phone=request.getParameter("PhoneNumber");
		String district=request.getParameter("District");
		String constituency=request.getParameter("Constituency");
		String dob=request.getParameter("dob");
		
		
		User user=new User(userid,password,firstName,lastName,ag,gender,address,phone,constituency,district,dob);
		Dao d=new Dao();
		String res=d.insert(user);
		//response.getWriter().print(res);
	    if(res.equalsIgnoreCase("Successfull")) {
    	   // Random rd=new Random();
	    	//int rand=rd.nextInt(99999);
	    	HttpSession session=request.getSession();
	    	response.sendRedirect("voteridreg.jsp");
    	   // session.setAttribute("VoterId", rand);
    	    //String voteid=Integer.toString(rand);
    	   // VoterIdGen v=new VoterIdGen(userid,voteid);
    	  //  String res1=d.insertVoteId(v);
    	   // String res2=d.insertVoteIdToUserDetails(v);
    	    //if(res1.equals("Successfull") && res2.equals("Successfull")) {
    	    //	response.sendRedirect("voteridreg.jsp");
    	   // }
	    }
		    else {
	    	response.sendRedirect("register.jsp");
	    }
	   
		
	}

}
