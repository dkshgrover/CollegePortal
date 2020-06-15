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

@WebServlet("/ADMIN_OldStudentServlet")
public class ADMIN_OldStudentServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String choice = request.getParameter("course");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root",
					"DakshGrover6497");
			String qry = "Select First_Name,Last_Name,stream,uname,pass from " + choice + " where uname is not null;";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(qry);
			request.setAttribute("attributes", rs);
			request.setAttribute("course", choice);
			request.getRequestDispatcher("ADMIN_PrintOldStudents.jsp").forward(request, response);
			// response.sendRedirect("ADMIN_PrintOldStudents.jsp");
		} catch (Exception e) {

		}
	}

}
