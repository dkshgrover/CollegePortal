package AuthenticatingUser;

import java.sql.*;
import java.util.*;

import DBConnection.ConnectionProvider;
import LoginBean.LoginBean;

public class Check_Login {

	public boolean checklogin(LoginBean loginbean) throws Exception {
		try {
			String uname = loginbean.getUname();
			String pass = loginbean.getPass();
			String course = loginbean.getCourse();
			Connection con = ConnectionProvider.provideConnection();
			String query = "select * from " + course + " where uname=? and pass=?";
			PreparedStatement st = con.prepareStatement(query);
			st.setString(1, uname);
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
