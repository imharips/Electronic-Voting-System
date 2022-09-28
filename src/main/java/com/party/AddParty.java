package com.party;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.reg.Dao;


@WebServlet("/AddParty")
@MultipartConfig(fileSizeThreshold=1024*1024*2,
maxFileSize=1024*1024*50,
maxRequestSize=1024*1024*50

		
		)
public class AddParty extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String p_name=request.getParameter("p_name");
		String p_leader=request.getParameter("p_lead");
		
		Dao d=new Dao();
		PartyDetails p=new PartyDetails(p_name,p_leader);
		
		String res=d.insertParty(p);
		if(res.equals("Successfull")) {
			response.sendRedirect("P_view.jsp");
		}
		else {
			response.sendRedirect("cpe.jsp");
		}
	}

}
