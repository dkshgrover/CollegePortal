package servelets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DBConnection.ConnectionProvider;

@WebServlet("/PR_ViewAllServlet")
public class PR_ViewAllServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String course = request.getParameter("course");
		String qry = null;
		try {
			Connection con = ConnectionProvider.provideConnection();
			qry = "select "+ course+".First_Name , "+course+".Last_Name , "+course+".stream , fees_info.annual_fee , fees_info.fine , fees_info.exam_fees , fees_info.fest_fees from "+course+" inner join fees_info on "+course+".uname=fees_info.uname";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(qry);
			HttpSession session = request.getSession();
			session.setAttribute("attributes", rs);
			session.setAttribute("course", course);
			response.sendRedirect("PR_PrintStudents.jsp");

		} catch (Exception e) {

		}
	}

}
