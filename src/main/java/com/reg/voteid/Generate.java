package com.reg.voteid;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.reg.Dao;
import com.reg.User;


@WebServlet("/Generate")
public class Generate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String uname=(String) session.getAttribute("uname");
//		String uname=(String) request.getAttribute("uname");
		
		Dao d=new Dao();
		User u=new User();
		
		Random r=new Random();
		int rand=r.nextInt(99999);
		String voterid=Integer.toString(rand);
		VoterIdGen gen=new VoterIdGen(uname,voterid);
		u.setUserid(uname);
		u.setVoterid(voterid);
		String res=d.insertVoteId(gen);
		if( res.equals("Successfull")) {
			String res1=d.insertVoteIdToUserDetails(gen);
			
			if(res1.equals("Successfull")) {
				
				response.sendRedirect("Gen.jsp");
			}
			
			
		}
		
	}

}
