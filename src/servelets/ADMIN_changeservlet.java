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
import javax.servlet.http.HttpSession;

import AuthenticatingUser.BCrypt;


@WebServlet("/ADMIN_changeservlet")
public class ADMIN_changeservlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String uname = request.getParameter("uname");
		session.setAttribute("uname", uname);
		String pass = request.getParameter("pass");
		pass=BCrypt.hashpw(pass, BCrypt.gensalt(12));
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String course = (String) session.getAttribute("course");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root",
					"DakshGrover6497");
			String qry = "update " + course + " set uname='" + uname + "',pass='" + pass
					+ "' where uname='NONE' and First_Name='" + fname + "' and Last_Name='" + lname +"'";
			Statement st = con.createStatement();
			int count = st.executeUpdate(qry);
			String qry2 = "update fees_info set uname='"+uname+"'where fname='"+fname+"' and lname='"+lname+"'";
			count=st.executeUpdate(qry2);
			if (count == 1) {
				response.sendRedirect("ADMIN_updateMarks");
			} else {
				request.setAttribute("ERRM", "Something Wrong Happened**");
				request.getRequestDispatcher("ADMIN_AddDetails.jsp").forward(request,response);
			}

		} catch (Exception e) {

		}
	}

}
