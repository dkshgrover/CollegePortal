package servelets;

import javax.servlet.http.HttpSession;

import DBConnection.ConnectionProvider;

import java.sql.*;
public class STUDENT_checkEmail {
	public static boolean check(String uname,String course)
	{	
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=ConnectionProvider.provideConnection();
			Statement st=con.createStatement();
			String qry="Select uname from "+course+" where uname='"+uname+"'";
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
