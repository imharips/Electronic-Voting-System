package com.candidate;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.reg.Dao;


@WebServlet("/CandidateServlet")
public class CandidateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String candidate_id=request.getParameter("cid");
		String candidate_name=request.getParameter("cname");
		String dob=request.getParameter("dob");
		String candidate_party=request.getParameter("cparty");
		String candidate_district=request.getParameter("cdistrict");
		String candidate_cons=request.getParameter("cons");
		String candidate_address=request.getParameter("address");
		String candidate_phone=request.getParameter("cphone");
		String candidate_mail=request.getParameter("email");
		Candidate c=new Candidate(candidate_id,candidate_name,dob,candidate_party,candidate_district,candidate_cons,candidate_address,candidate_phone,candidate_mail);;
		
		Dao d=new Dao();
		String res=d.insertCandidate(c);
		if(res.equals("Successfull")) {
			HttpSession session=request.getSession();
			response.sendRedirect("C_View.jsp");
		}
		else {
			response.sendRedirect("cpe_page.jsp");
		}
		
	}

}
