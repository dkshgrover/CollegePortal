package servelets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.ConnectionProvider;

@WebServlet("/PR_setnotpaidTeacher")
public class PR_setnotpaidTeacher extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Connection con = ConnectionProvider.provideConnection();
			String qry = "update teachers1 set status='Not Transferred'";
			Statement st = con.createStatement();
			st.executeUpdate(qry);
			response.sendRedirect("PR_teacherInfo.jsp");

		} catch (Exception e) {

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
