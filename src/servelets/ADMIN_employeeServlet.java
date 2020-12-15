package servelets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.ConnectionProvider;


@WebServlet("/ADMIN_employeeServlet")
public class ADMIN_employeeServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name=request.getParameter("name");
		String post=request.getParameter("post");
		String course=request.getParameter("course");
		String sub=request.getParameter("sub");
		int pn=0;
		if(post.equalsIgnoreCase("Senior Professor"))
		{
			pn=1;
		}
		if(post.equalsIgnoreCase("Associate Professor"))
		{
			pn=2;
		}
		if(post.equalsIgnoreCase("Assistant Professor"))
		{
			pn=3;
		}
		if(post.equalsIgnoreCase("Lab Assistant"))
		{
			pn=4;
		}
		try
		{
			Connection con = ConnectionProvider.provideConnection();
			String qry="insert into employees(Name,Post) values(?,?)";
			PreparedStatement st=con.prepareStatement(qry);
			st.setString(1, name);
			st.setString(2, post);
			String query="insert into teachers1(pn,Name,Post,email_id,pass,stream_teaching,status,subject) values(?,?,?,?,?,?,?,?)";
			PreparedStatement st2=con.prepareStatement(query);
			st2.setInt(1, pn);
			st2.setString(2, name);
			st2.setString(3, post);
			st2.setString(4, "NONE");
			st2.setString(5, "NONE");
			st2.setString(6, course);
			st2.setString(7, "NONE");
			st2.setString(8, sub);
			int count=st.executeUpdate();
			int count2=st2.executeUpdate();
			if(count==1&&count2==1)
			{
				request.getRequestDispatcher("ADMIN_editNoOfEmp").forward(request, response);
			}
		}
		catch(Exception e)
		{
			
		}
	}

}
