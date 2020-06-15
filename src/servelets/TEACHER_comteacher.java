package servelets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import AuthenticatingUser.Check_LoginT;
import DBConnection.ConnectionProvider;
import LoginBean.LoginBeanT;
import java.sql.*;

@WebServlet("/TEACHER_comteacher")
public class TEACHER_comteacher extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		LoginBeanT obj2 = new LoginBeanT();
		obj2.setEmail(email);
		obj2.setPass(pass);
		Check_LoginT objT = new Check_LoginT();
		try {
			if (objT.checkloginT(obj2)) {
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				session.setAttribute("pass", pass);
				response.sendRedirect("TEACHER_MainFileT.jsp");
			} else {
				request.setAttribute("errorMessage", "Invalid Details Filled**");
				RequestDispatcher rd = request.getRequestDispatcher("TEACHER_login_portalT.jsp");
				rd.forward(request, response);
				// response.sendRedirect("ADMIN_login_portalAdmin.jsp");
			}
		} catch (Exception e) {

		}
	}

}
