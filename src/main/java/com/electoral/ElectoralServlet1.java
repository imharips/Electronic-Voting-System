package com.electoral;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ElectoralServlet1")
public class ElectoralServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.println("<html><body bg-color=cyan>");
		
		
			try {
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
				PreparedStatement st=con.prepareStatement("select * from voteridrequests");
				ResultSet rs=st.executeQuery();
				out.println("<table color=red align =center border=1 width=50% height=50%>");
				out.println("<tr><th>UserId</th><th>VoterId</th></tr>");
				while(rs.next()) {
					String uid=rs.getString("userid");
					String vid=rs.getString("voterid");
					out.println("<tr><td>"+uid+"</td><td>"+vid+"</td></tr>");
				}
				out.println("</table></body></html>");
				con.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
	}

}
