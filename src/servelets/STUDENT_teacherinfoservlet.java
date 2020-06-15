package servelets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DBConnection.ConnectionProvider;


@WebServlet("/STUDENT_teacherinfoservlet")
public class STUDENT_teacherinfoservlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			Connection con = ConnectionProvider.provideConnection();
			String qry = "select Name,subject from teachers1 where stream_teaching='"+session.getAttribute("course")+"'";
			Statement st = con.createStatement();
			ResultSet rs2 = st.executeQuery(qry);
			session.setAttribute("teachers", rs2);
			request.getRequestDispatcher("STUDENT_showRecords.jsp").forward(request, response);
		} catch (Exception e) {

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
