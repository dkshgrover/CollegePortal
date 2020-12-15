package servelets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.ConnectionProvider;


@WebServlet("/ADMIN_editNoOfEmp")
public class ADMIN_editNoOfEmp extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Connection con = ConnectionProvider.provideConnection();
			String qry = "select * from main_data";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(qry);
			rs.next();
			int a = rs.getInt(2);
			a++;
			String query = "update main_data set no_of_employees=" + a;
			int c = st.executeUpdate(query);
		} catch (Exception e) {

		}
		request.getRequestDispatcher("ADMIN_EmpSuccess.jsp").forward(request, response);
	}

}
