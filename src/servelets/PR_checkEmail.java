package servelets;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import DBConnection.ConnectionProvider;

public class PR_checkEmail {
	public static boolean check(String email) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = ConnectionProvider.provideConnection();
			Statement st = con.createStatement();
			String qry = "Select email from payroll where email='" + email + "'";
			ResultSet rs = st.executeQuery(qry);
			if (rs.next()) {
				return true;
			}
		} catch (Exception e) {

		}
		return false;
	}
}
