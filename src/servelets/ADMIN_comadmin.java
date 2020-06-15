package servelets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import AuthenticatingUser.Check_LoginAdmin;
import LoginBean.LoginBeanAdmin;

@WebServlet("/ADMIN_comadmin")
public class ADMIN_comadmin extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		//response.setContentType("text/html");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
	
		LoginBeanAdmin obj2=new LoginBeanAdmin();
		obj2.setEmail(email);
		obj2.setPass(pass);
		Check_LoginAdmin objA = new Check_LoginAdmin();
		try {
			if (objA.checkloginAdmin(obj2)) {
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				session.setAttribute("pass", pass);
				response.sendRedirect("ADMIN_MainFileAdmin.jsp");
//				RequestDispatcher rd = request.getRequestDispatcher("ADMIN_MainFileAdmin.jsp");
//				rd.forward(request, response);
			} else {
				request.setAttribute("errorMessage", "Invalid Details Filled**");
				RequestDispatcher rd = request.getRequestDispatcher("ADMIN_login_portalAdmin.jsp");
				rd.forward(request, response);
				//response.sendRedirect("ADMIN_login_portalAdmin.jsp");
			}
		} catch (Exception e) {

		}
	}

}
