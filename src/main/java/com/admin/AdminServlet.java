package com.admin;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.reg.Dao;


@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("UserId");
		String pass=request.getParameter("Password");
		
		AEdetails ae=new AEdetails();
		ae.setUserid(uname);
		ae.setPass(pass);
		Dao d=new Dao();
		boolean res;
	
		try {
			res = d.loginAdmin(ae);
			if(res) {
				HttpSession session=request.getSession();
				session.setAttribute("u_name", uname);
				response.sendRedirect("cpe_page.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
