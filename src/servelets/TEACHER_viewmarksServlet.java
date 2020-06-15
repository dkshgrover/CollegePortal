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

@WebServlet("/TEACHER_viewmarksServlet")
public class TEACHER_viewmarksServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String uname = request.getParameter("uname");
		String course = (String) session.getAttribute("course");
		try {
			Connection con = ConnectionProvider.provideConnection();
			String qry = "select * from marks_" + course + " where uname='" + uname+"'";
			Statement st = con.createStatement();
			ResultSet rs=st.executeQuery(qry);
//			rs.next();
//			System.out.println(rs.getInt(2)+" "+rs.getInt(3)+" "+rs.getInt(4)+" "+rs.getInt(5)+" "+rs.getInt(6));
			request.setAttribute("pars", rs);
			request.setAttribute("uname", uname);
			request.getRequestDispatcher("TEACHER_viewData.jsp").forward(request,response);
		} catch (Exception e) {

		}
	}

}
