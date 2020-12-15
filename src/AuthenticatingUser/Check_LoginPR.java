package AuthenticatingUser;

import java.sql.*;
import java.util.*;

import DBConnection.ConnectionProvider;
import LoginBean.LoginBeanPR;

public class Check_LoginPR {
	public boolean checkloginPR(LoginBeanPR loginbeanPR) throws Exception {
		try {
			String email = loginbeanPR.getEmail();
			String pass = loginbeanPR.getPass();
			Connection con = ConnectionProvider.provideConnection();
			String query = "select * from payroll where email=? and pass=?";
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
