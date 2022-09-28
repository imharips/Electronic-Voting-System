package com.reg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.admin.AEdetails;
import com.candidate.Candidate;
import com.election.ElectionDetails;
import com.mysql.cj.protocol.Resultset;
import com.party.PartyDetails;
import com.reg.voteid.VoterIdGen;

public class Dao {
	

	public String insert(User u) {
		String sql="insert into userdetails (userid,pass,firstname,lastname,age,gender,address,phone,constituency,district,dob) values (?,?,?,?,?,?,?,?,?,?,?)";
		String res="Successfull";
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
		
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
		    PreparedStatement st=con.prepareStatement(sql);
		    st.setString(1, u.getUserid());
		    st.setString(2, u.getPass());
		    st.setString(3, u.getFirstname());
		    st.setString(4, u.getLastname());
		    st.setInt(5, u.getAge());
		    st.setString(6, u.getGender());
		    st.setString(7, u.getAddress());
		    st.setString(8, u.getPhone());
		    st.setString(9, u.getConstituency());
		    st.setString(10, u.getDistrict());
		    st.setString(11, u.getDob());
		    
		    st.executeUpdate();
	}
		catch(Exception e) {
			e.printStackTrace();
			res="not successfull";
		}
		return res;
}
	public String insertVoteId(VoterIdGen gen) {
		String sql="insert into voteridrequests (userid,voterid) values (?,?)";
		String res="Successfull";
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
		
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
		    PreparedStatement st=con.prepareStatement(sql);
		    st.setString(1, gen.getUserid());
		    st.setString(2, gen.getVoterid());
		    st.executeUpdate();
	}
		catch(Exception e) {
			e.printStackTrace();
			res="not successfull";
			
		}
		return res;
		}
	public String insertVoteIdToUserDetails(VoterIdGen gen) {
		String sql="update userdetails set voterid=? where userid=?";
		String res="Successfull";
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
		
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
		    PreparedStatement st=con.prepareStatement(sql);
		    st.setString(1, gen.getVoterid());
		    st.setString(2, gen.getUserid());
		    
		    st.executeUpdate();
	}
		catch(Exception e) {
			e.printStackTrace();
			res="not successfull";
			
		}
		return res;
		
	}
	public boolean loginUser(User u) throws ClassNotFoundException, SQLException {
		String voterid=u.getVoterid();
		String sql="select voterid from userdetails where voterid=?";
		String res="Successfull";
		ResultSet rs;
		boolean b;
        
			
			Class.forName("com.mysql.jdbc.Driver");
		
		    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
		    PreparedStatement st=con.prepareStatement(sql);
		    st.setString(1,voterid);
		    
		    
		    rs= st.executeQuery();
		    b=rs.next();
		  
		   
		
		
        
        return b;
   }
	public boolean loginAdmin(AEdetails ae) throws ClassNotFoundException, SQLException {
		
		String uname=ae.getUserid();
		String pass=ae.getPass();
		String sql="select userid,pass from logincredentials where userid=? and pass=? and usertype='A'";
		ResultSet rs;
		boolean b;
		
				
				Class.forName("com.mysql.jdbc.Driver");
			
			    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
			    PreparedStatement st=con.prepareStatement(sql);
			    st.setString(1,uname);
			    st.setString(2, pass);
			    
			    rs=st.executeQuery();
			    b=rs.next();
		
		return b;
	}
	public boolean loginElectoral(AEdetails ae) throws ClassNotFoundException, SQLException {
		String uname=ae.getUserid();
		String pass=ae.getPass();
		String sql="select userid,pass from logincredentials where userid=? and pass=? and usertype='E'";
		ResultSet rs;
		boolean b;
		
				
				Class.forName("com.mysql.jdbc.Driver");
			
			    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
			    PreparedStatement st=con.prepareStatement(sql);
			    st.setString(1,uname);
			    st.setString(2, pass);
			    
			    rs=st.executeQuery();
			    b=rs.next();
		
		return b;
		
	}
	public String insertCandidate(Candidate c) {
		String res="Successfull";
		String sql="insert into candidatedetails (candidateid,candidatename,dob,partyname,district,constituency,address,phone,email) values (?,?,?,?,?,?,?,?,?)";
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, c.getCandidateId());
			st.setString(2, c.getCandidateName());
			st.setString(3, c.getDob());
			st.setString(4,c.getPartyName());
			st.setString(5, c.getDistrict());
			st.setString(6, c.getConstituency());
			st.setString(7, c.getAddress());
			st.setString(8, c.getPhone());
			st.setString(9, c.getEmail());
			st.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
			res="not successfull";
		}
		
		
		return res;
	}
	public String insertParty(PartyDetails p) {
		String res="Successfull";
		String sql="insert into partydetails (partyname,partyleader) values (?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, p.getPartyName());
			st.setString(2, p.getPartyLeader());
			
			st.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
			res="not successfull";
		}
		
		
		return res;
	}
	public String insertElection(ElectionDetails election) {
		String res="Successfull";
		String sql="insert into electiondetails (electionname,electiondate,votingtime) values (?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, election.getE_name());
			st.setString(2, election.getE_date());
			st.setString(3,election.getTime());
			st.executeUpdate();
			
		}
		catch(Exception e) {
			e.printStackTrace();
			res="not successfull";
		}
		
		return res;
	}
	public boolean userLogin(User u) throws ClassNotFoundException, SQLException {
		
		String uname=u.getUserid();
		String pass=u.getPass();
		String sql="select userid,pass from userdetails where userid=? and pass=?";
		ResultSet rs;
		boolean b;
		
				
				Class.forName("com.mysql.jdbc.Driver");
			
			    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
			    PreparedStatement st=con.prepareStatement(sql);
			    st.setString(1,uname);
			    st.setString(2, pass);
			    
			    rs=st.executeQuery();
			    b=rs.next();
		
		return b;
	}
	/*public String insertVoteId(User u) throws ClassNotFoundException, SQLException {
		
		String userid=u.getUserid();
		String voterid=u.getVoterid();
		String sql="update userdetails set voterid=? where userid=?";
		
		String res="Successfull";

		Class.forName("com.mysql.jdbc.Driver");
	
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electronicvotingsystem","root","Qr8R$Y6X");
	    PreparedStatement st=con.prepareStatement(sql);
	    st.setString(1, voterid);
	    st.setString(2, userid);
	    st.executeUpdate();
		
		return res;
		
	}*/
}
