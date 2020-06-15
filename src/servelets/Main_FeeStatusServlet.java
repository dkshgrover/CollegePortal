package servelets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/Main_FeeStatusServlet")
public class Main_FeeStatusServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try
		{
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String fs = request.getParameter("fs");
			String url = "jdbc:mysql://localhost:3306/college"; // URL OF DATABASE
			String user = "root"; // USERNAME OF MYSQL (BY DEFAULT : ROOT) String
			String passw = "DakshGrover6497"; // PASSWORD OF DATABASE
			Class.forName("com.mysql.jdbc.Driver"); // LOAD AND REGISTERING THE
			Connection con = DriverManager.getConnection(url, user, passw);
			String qry2 = "insert into fees_info(uname,fname,lname,annual_fee,fine,exam_fees,fest_fees) values('NONE','"+fname+"','"+lname+"','" + fs
					+ "','NONE','NONE','NONE')";
			Statement st1 = con.createStatement();
			int c=st1.executeUpdate(qry2);
			if(c==1)
			{
				request.getRequestDispatcher("Main_editMainData").forward(request, response);
			}
		}
		catch(Exception e)
		{
			
		}
	}

}
