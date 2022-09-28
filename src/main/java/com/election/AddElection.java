package com.election;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.reg.Dao;


@WebServlet("/AddElection")
public class AddElection extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ename=request.getParameter("ename");
		String edate=request.getParameter("edate");
		String etime=request.getParameter("etime");
		Dao d=new Dao();
		ElectionDetails e=new ElectionDetails(ename,edate,etime);
		String res=d.insertElection(e);
		if(res.equals("Successfull")) {
			response.sendRedirect("E_view.jsp");
		}
		
	}

}
