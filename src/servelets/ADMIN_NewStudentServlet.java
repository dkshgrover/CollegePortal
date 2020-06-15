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

@WebServlet("/ADMIN_NewStudentServlet")
public class ADMIN_NewStudentServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String course = request.getParameter("course");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root",
					"DakshGrover6497");
			// System.out.println(course);
			String qry = "Select First_Name,Last_Name,stream,uname,pass from " + course + " where uname='NONE'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(qry);
			HttpSession session = request.getSession();
			session.setAttribute("attributes", rs);
			session.setAttribute("course", course);
			response.sendRedirect("ADMIN_PrintNewStudent.jsp");
		} catch (Exception e) {

		}
	}

}
