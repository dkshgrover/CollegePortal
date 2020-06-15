package AuthenticatingUser;

import java.sql.*;
import java.util.*;

import DBConnection.ConnectionProvider;
import LoginBean.LoginBeanAdmin;

public class Check_LoginAdmin {
	public boolean checkloginAdmin(LoginBeanAdmin loginbeanAdmin) throws Exception {
		try {
			// response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
			String email = loginbeanAdmin.getEmail();
			String pass = loginbeanAdmin.getPass();
			Connection con = ConnectionProvider.provideConnection();
			String query = "select * from administrator where email=?";
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				String hashed=rs.getString(2);
				if(BCrypt.checkpw(pass, hashed))
				{
					return true;
				}
			}
		} catch (Exception e) {

		}
		return false;
	}
}
