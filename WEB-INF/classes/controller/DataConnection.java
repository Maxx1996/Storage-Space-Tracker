package controller;
import java.sql.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DataConnection
 */
@WebServlet("/DataConnection")
public class DataConnection extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			/*String url="jdbc:db2://localhost:50000/maxx";
			String user="MAXX";
			String pass="mayankmk67gupta";
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			Connection cn=DriverManager.getConnection(url,user,pass);
			System.out.println("Database connected....");*/
			Connection cn=ConnectData.getCn();
			System.out.println("Connected.....");
			
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
