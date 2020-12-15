package servelets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DBConnection.ConnectionProvider;

@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		request.setAttribute("fname", fname);
		request.setAttribute("lname", lname);
		String contact = request.getParameter("contact");
		String Ffname = request.getParameter("Ffname");
		String Flname = request.getParameter("Flname");
		String Fcontact = request.getParameter("Fcontact");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zip");
		String stream = request.getParameter("stream");
		String course = request.getParameter("course");
        //System.out.println(fname+" "+lname);
		try {
			
			Connection con = ConnectionProvider.provideConnection();
			String qry = "insert into " + course
					+ "(First_Name,Last_Name,Student_Contact,Father_First_Name,Father_Last_Name,Father_Contact,Address,city,state,zipcode,stream,uname,pass) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement st = con.prepareStatement(qry);
			st.setString(1, fname);
			st.setString(2, lname);
			st.setString(3, contact);
			st.setString(4, Ffname);
			st.setString(5, Flname);
			st.setString(6, Fcontact);
			st.setString(7, address);
			st.setString(8, city);
			st.setString(9, state);
			st.setString(10, zip);
			st.setString(11, stream);
			st.setString(12, "NONE");
			st.setString(13, "NONE");
			st.executeUpdate();
			RequestDispatcher rd = request.getRequestDispatcher("feestatus.jsp");
			rd.forward(request, response);
		} catch (Exception e) {

		}
	}

}
