package com.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.reg.Dao;
import com.reg.User;


@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("UserId");
		String pass=request.getParameter("Password");
		Dao d=new Dao();
		User u=new User();
		u.setUserid(uname);
		u.setPass(pass);
		boolean b;
		try {
			b=d.userLogin(u);
			
			if(b) {
				HttpSession session=request.getSession();
				session.setAttribute("uname", uname);
				response.sendRedirect("UserHome.jsp");
			}
			else {
				response.sendRedirect("userLogin.jsp");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
