package AuthenticatingUser;

import java.sql.*;
import java.util.*;

import DBConnection.ConnectionProvider;
import LoginBean.LoginBeanT;

public class Check_LoginT {
	public boolean checkloginT(LoginBeanT loginbeanT) throws Exception {
		try {
			String email = loginbeanT.getEmail();
			String pass = loginbeanT.getPass();
			Connection con = ConnectionProvider.provideConnection();
			String query = "select * from teachers1 where email_id='"+email+"' and pass='"+pass+"'";
			Statement st=con.createStatement();
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				return true;
			}
			
		} catch (Exception e) {

		}
		return false;
	}
}
