package AuthenticatingUser;

import java.sql.*;
import java.util.*;

import DBConnection.ConnectionProvider;
import LoginBean.LoginBean;

public class Check_Login {

	public boolean checklogin(LoginBean loginbean) throws Exception {
		try {
			// response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
			String uname = loginbean.getUname();
			String pass = loginbean.getPass();
			String course = loginbean.getCourse();
			Connection con = ConnectionProvider.provideConnection();
			String query = "select * from " + course + " where uname=?";
                        System.out.println(query);
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				String hashed = rs.getString(14);
				if (BCrypt.checkpw(pass, hashed)) {
					return true;
				}
			}
		} catch (Exception e) {

		}
		return false;
	}
}
