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
@WebServlet("/TEACHER_uploadmarks")
public class TEACHER_uploadmarks extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String uname=request.getParameter("uname");
		float marks=Float.parseFloat(request.getParameter("marks"));
		try
		{
			Connection con=ConnectionProvider.provideConnection();
			String course=(String)session.getAttribute("course");
			String qry="select subject from teachers1 where email_id='"+session.getAttribute("email")+"'";
			//System.out.println(qry);
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(qry);
			rs.next();
			String subject=rs.getString(1);
			String qry2="Select * from marks_"+course+" where uname='"+uname+"'";
			//System.out.println(qry2);
			ResultSet rs2=st.executeQuery(qry2);
			rs2.next();
			float mark=rs2.getFloat(subject);
			mark=mark+marks;
			String qry3="update marks_"+course+" set "+subject+"="+mark+" where +uname='"+uname+"'";
			//System.out.println(qry3);
			int c=st.executeUpdate(qry3);
			if(c==1)
			{
				request.setAttribute("success", "Marks Uploaded**");
				response.sendRedirect("TEACHER_studentInfo.jsp");
			}
			else
			{
				request.setAttribute("failure", "Some Problem Occured**");
				response.sendRedirect("TEACHER_studentInfo.jsp");
			}
		}
		catch(Exception e)
		{
			
		}
	}

}
