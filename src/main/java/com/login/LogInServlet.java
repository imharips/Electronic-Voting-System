package com.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.reg.Dao;
import com.reg.User;


@WebServlet("/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String voteid=request.getParameter("id");
		User u=new User();
		u.setVoterid(voteid);
		
		Dao d=new Dao();
		boolean res;
		try {
			res = d.loginUser(u);
			if(res) {
				HttpSession session=request.getSession();
				session.setAttribute("Voterid",voteid);
				response.sendRedirect("VotingPage.jsp");
				
				
				
			}
			else {
				response.sendRedirect("login.jsp");
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}

}
