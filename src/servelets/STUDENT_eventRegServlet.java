package servelets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.ConnectionProvider;

import java.sql.*;

@WebServlet("/STUDENT_eventRegServlet")
public class STUDENT_eventRegServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name=request.getParameter("name");
		String roll=request.getParameter("roll");
		String course=request.getParameter("course");
		String stream=request.getParameter("stream");
		String clas=request.getParameter("class");
		String contact=request.getParameter("contact");
		String event=request.getParameter("event");
		try
		{
			Connection con=ConnectionProvider.provideConnection();
			String query="insert into events_registerations(Name,RollNo,Course,stream,class_section,contact,event) values(?,?,?,?,?,?,?)";
			PreparedStatement st=con.prepareStatement(query);
			st.setString(1, name);
			st.setString(2, roll);
			st.setString(3, course);
			st.setString(4, stream);
			st.setString(5, clas);
			st.setString(6, contact);
			st.setString(7, event);
			int count=st.executeUpdate();
			if(count==1)
			{
				response.sendRedirect("STUDENT_EventRegSucc.jsp");
			}
		}
		catch(Exception e)
		{
			
		}
	}

}
