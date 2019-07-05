package controller;
import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			PrintWriter out=response.getWriter();
			String wid=request.getParameter("wid");
			String wpass=request.getParameter("wpass");
			if(wid.equals("manager")&& wpass.equals("manager")){
				RequestDispatcher rd=request.getRequestDispatcher("WHM.jsp");
				rd.forward(request, response);
			}
				else{
				out.println("Wrong user id or password");
				RequestDispatcher rd=request.getRequestDispatcher("WarehouseManager.html");
				rd.include(request, response);
			}
		}catch(Exception e){
			System.out.println(e);
		}
	}

}
