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

import AuthenticatingUser.BCrypt;
import DBConnection.ConnectionProvider;

@WebServlet("/STUDENT_changepassservlet")
public class STUDENT_changepassservlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String uname = (String) session.getAttribute("uname");
		String pass = request.getParameter("oldpass");
		String newpass = request.getParameter("newpass");
		String verpass = request.getParameter("verpass");
		if (!newpass.equals(verpass)) {
			request.setAttribute("errm2", "Passwords didn't matched**");
			request.getRequestDispatcher("STUDENT_changepass.jsp").forward(request, response);
		}
		try {
			Connection con = ConnectionProvider.provideConnection();
			String qry = "SELECT * from "+session.getAttribute("course")+" where uname='" + uname + "'";
			Statement st = con.createStatement();
			ResultSet rs1 = st.executeQuery(qry);
			if (rs1.next()) {
				String hashed = rs1.getString(14);
				if (BCrypt.checkpw(pass, hashed)) {
					newpass = BCrypt.hashpw(newpass, BCrypt.gensalt(12));
					String query = "update "+session.getAttribute("course")+" set pass='" + newpass + "' where uname='" + uname + "'";
					st.executeUpdate(query);
					request.setAttribute("succ", "Passwords Changed :)");
					request.getRequestDispatcher("STUDENT_MainFile.jsp").forward(request, response);
				} else {
					request.setAttribute("errm", "Wrong Password Filled**");
					// response.sendRedirect("PR_changepass.jsp");
					request.getRequestDispatcher("STUDENT_changepass.jsp").forward(request, response);
				}
			}
		} catch (Exception e) {

		}
	}
}
