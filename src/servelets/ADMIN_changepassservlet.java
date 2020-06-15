package servelets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import AuthenticatingUser.BCrypt;
import DBConnection.ConnectionProvider;

import java.sql.*;

@WebServlet("/ADMIN_changepassservlet")
public class ADMIN_changepassservlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String email = (String) session.getAttribute("email");
		String pass = request.getParameter("oldpass");
		String newpass = request.getParameter("newpass");
		String verpass = request.getParameter("verpass");
		if (!newpass.equals(verpass)) {
			request.setAttribute("errm2", "Passwords didn't matched**");
			request.getRequestDispatcher("ADMIN_changepass.jsp").forward(request, response);
		}
		try {
			Connection con = ConnectionProvider.provideConnection();
			String qry = "SELECT * from administrator where email='" + email + "'";
			Statement st = con.createStatement();
			ResultSet rs1 = st.executeQuery(qry);
			if (rs1.next()) {
				String hashed = rs1.getString(2);
				if (BCrypt.checkpw(pass, hashed)) {
					newpass = BCrypt.hashpw(newpass, BCrypt.gensalt(12));
					String query = "update administrator set pass='" + newpass + "' where email='" + email + "'";
					st.executeUpdate(query);
					request.setAttribute("succ", "Passwords Changed :)");
					request.getRequestDispatcher("ADMIN_MainFileAdmin.jsp").forward(request, response);
				} else {
					request.setAttribute("errm", "Wrong Password Filled**");
					request.getRequestDispatcher("ADMIN_changepass.jsp").forward(request, response);
				}
			}
		} catch (Exception e) {

		}
	}

}
