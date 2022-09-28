package com.voting;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/VotingServlet")
public class VotingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("p_name");
		String v_id=request.getParameter("v_id");
		
		int i,j;
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
			PreparedStatement st=con.prepareStatement("update partydetails set votecount=votecount+1 where partyname=?");
			//PreparedStatement st1=con.prepareStatement("update votedpeople set voterid=?,votestatus='yes'");
			st.setString(1, name);
			//st1.setString(1, v_id);
			i=st.executeUpdate();
			//j=st1.executeUpdate();
			if(i>0  ) {
				PreparedStatement st1=con.prepareStatement("insert into votestatus (voterid,voted) values (?,?)");
				st1.setString(1, v_id);
				st1.setString(2, "yes");
				j=st1.executeUpdate();
				if(j>0) {
				HttpSession session=request.getSession();
				session.setAttribute("name",name);
				response.sendRedirect("last.jsp");
				}
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
