package servelets;

import javax.servlet.http.HttpSession;

import DBConnection.ConnectionProvider;

import java.sql.*;
public class TEACHER_checkEmail {
	public static boolean check(String email)
	{	
		try
		{
			Connection con=ConnectionProvider.provideConnection();
			Statement st=con.createStatement();
			String qry="Select email_id from teachers1 where email_id='"+email+"'";
			ResultSet rs=st.executeQuery(qry);
			if(rs.next())
			{
				return true;
			}
		}
		catch(Exception e)
		{
			
		}
		return false;
	}
}
