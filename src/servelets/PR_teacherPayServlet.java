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

@WebServlet("/PR_teacherPayServlet")
public class PR_teacherPayServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String status = request.getParameter("status");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root",
					"DakshGrover6497");
			String qry = "update teachers1 set status='" + status + "' where Name='" + name + "'";
			Statement st = con.createStatement();
			int count = st.executeUpdate(qry);
			if (count == 1) {
				response.sendRedirect("PR_successful.jsp");
			} else {
				request.setAttribute("ERRM", "Something Wrong Happened**");
				request.getRequestDispatcher("PR_teacherPay.jsp").forward(request, response);
			}

		} catch (Exception e) {

		}
	}
}
