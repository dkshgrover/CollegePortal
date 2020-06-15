package servelets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import AuthenticatingUser.Check_Login;
import LoginBean.LoginBean;

@WebServlet("/STUDENT_comstudent")
public class STUDENT_comstudent extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html");
		response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String course = request.getParameter("course");
		LoginBean obj1 = new LoginBean();
		obj1.setUname(uname);
		obj1.setPass(pass);
		obj1.setCourse(course);
		Check_Login obj = new Check_Login();
		try {
			if (obj.checklogin(obj1)) {
				HttpSession session = request.getSession();
				session.setAttribute("uname", uname);
				session.setAttribute("pass", pass);
				session.setAttribute("course", course);
				response.sendRedirect("STUDENT_MainFile.jsp");
//				RequestDispatcher rd = request.getRequestDispatcher("STUDENT_MainFile.jsp");
//				rd.forward(request, response);
			} else {
				request.setAttribute("errorMessage", "Invalid Details Filled**");
				RequestDispatcher rd = request.getRequestDispatcher("STUDENT_login_portalS.jsp");
				rd.include(request, response);
			}
		} catch (Exception e) {

		}
	}

}
