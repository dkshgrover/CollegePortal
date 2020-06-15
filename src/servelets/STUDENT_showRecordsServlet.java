package servelets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DBConnection.ConnectionProvider;

import java.sql.*;

@WebServlet("/STUDENT_showRecordsServlet")
public class STUDENT_showRecordsServlet extends HttpServlet {

	private ResultSet rs2;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			Connection con = ConnectionProvider.provideConnection();
			String qry = "select * from marks_" + session.getAttribute("course") + " where uname='"
					+ session.getAttribute("uname") + "'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(qry);
			session.setAttribute("attrs", rs);
			response.sendRedirect("STUDENT_teacherinfoservlet");
			request.getRequestDispatcher("STUDENT_showRecords.jsp").forward(request, response);
		} catch (Exception e) {

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
