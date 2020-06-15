package servelets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import AuthenticatingUser.Check_LoginPR;
import LoginBean.LoginBeanPR;

@WebServlet("/PR_compayroll")
public class PR_compayroll extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/html");
		response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		LoginBeanPR obj2=new LoginBeanPR();
		obj2.setEmail(email);
		obj2.setPass(pass);
		Check_LoginPR objPR = new Check_LoginPR();
		try {
			if (objPR.checkloginPR(obj2)) {
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				session.setAttribute("pass", pass);
				response.sendRedirect("PR_MainFilePR.jsp");
			} else {
				request.setAttribute("errorMessage", "Invalid Details Filled**");
				request.getRequestDispatcher("PR_login_portalPR.jsp").forward(request, response);
			}
		} catch (Exception e) {

		}
	}
}
