package servelets;

import javax.servlet.http.HttpSession;

import DBConnection.ConnectionProvider;

import java.sql.*;
public class ADMIN_checkEmail {
	public static boolean check(String email)
	{	
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=ConnectionProvider.provideConnection();
			Statement st=con.createStatement();
			String qry="Select email from administrator where email='"+email+"'";
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
