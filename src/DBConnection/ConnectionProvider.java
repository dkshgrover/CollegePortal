package DBConnection;
import java.sql.*;
public class ConnectionProvider {
	public static Connection provideConnection()throws Exception
	{
		String url = "jdbc:mysql://localhost:3306/college"; // URL OF DATABASE
		String user = "root"; // USERNAME OF MYSQL (BY DEFAULT : ROOT)
		String passw = "DakshGrover6497"; // PASSWORD OF DATABASE
		Class.forName("com.mysql.jdbc.Driver"); // LOAD AND REGISTERING THE DRIVER
		Connection con = DriverManager.getConnection(url, user, passw);
		return con;
	}
}
