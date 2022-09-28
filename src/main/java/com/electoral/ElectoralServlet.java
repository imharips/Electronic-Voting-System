package com.electoral;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.admin.AEdetails;
import com.reg.Dao;


@WebServlet("/ElectoralServlet")
public class ElectoralServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("UserId");
		String pass=request.getParameter("Password");
		AEdetails ae=new AEdetails();
		ae.setUserid(uname);
		ae.setPass(pass);
		Dao d=new Dao();
		boolean res;
		try {
			res = d.loginElectoral(ae);
			if(res) {
				HttpSession session=request.getSession();
				session.setAttribute("uname", uname);
				response.sendRedirect("Gen.jsp");
			}
			else {
				response.sendRedirect("electoral.jsp");;
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
