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

@WebServlet("/TEACHER_studentInfoServlet")
public class TEACHER_studentInfoServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		try
		{
		Connection con = ConnectionProvider.provideConnection();
		String query = "select * from teachers1 where email_id='" + session.getAttribute("email") + "'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		rs.next();
		String course = rs.getString(6);
		session.setAttribute("course", course);
		response.sendRedirect("TEACHER_studentInfo.jsp");
		}
		catch(Exception e)
		{
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
