package servelets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AuthenticatingUser.BCrypt;

@WebServlet("/ADMIN_teacherServlet")
public class ADMIN_teacherServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		pass = BCrypt.hashpw(pass, BCrypt.gensalt(12));
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root",
					"DakshGrover6497");
			String qry = "update teachers1 set email_id=? , pass=? where Name=?";
			PreparedStatement st = con.prepareStatement(qry);
			st.setString(1, email);
			st.setString(2, pass);
			st.setString(3, name);
			int count = st.executeUpdate();
			if (count == 1) {
				request.getRequestDispatcher("ADMIN_TeacherSuccess.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("someErr", "Some Error Occured**");
				request.getRequestDispatcher("ADMIN_updateTeacherDetails.jsp").forward(request, response);
			}
		} catch (Exception e) {

		}
	}

}
