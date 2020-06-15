package servelets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/STUDENT_logoutservlet")
public class STUDENT_logoutservlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("uname");
		session.removeAttribute("pass");
		session.removeAttribute("course");
		session.invalidate();
		response.sendRedirect("STUDENT_login_portalS.jsp");
		// request.getRequestDispatcher("ADMIN_login_portalAdmin.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
