package AuthenticatingUser;

import java.sql.*;
import java.util.*;

import DBConnection.ConnectionProvider;
import LoginBean.LoginBeanAdmin;

public class Check_LoginAdmin {
	public boolean checkloginAdmin(LoginBeanAdmin loginbeanAdmin) throws Exception {
		try {
			String email = loginbeanAdmin.getEmail();
			String pass = loginbeanAdmin.getPass();
			Connection con = ConnectionProvider.provideConnection();
			String query = "select * from administrator where email=? and pass=?";
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, email);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {

		}
		return false;
	}
}
