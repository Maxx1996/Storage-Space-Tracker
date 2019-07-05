package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ME
 */
@WebServlet("/ME")
public class ME extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			PrintWriter out=response.getWriter();
			String id=request.getParameter("id");
			String pass=request.getParameter("pass");
			if(id.equals("engineer")&& pass.equals("engineer")){
				RequestDispatcher rd=request.getRequestDispatcher("SelME.html");
				rd.forward(request, response);
			}
				else{
				out.println("Wrong user id or password");
				RequestDispatcher rd=request.getRequestDispatcher("ME.html");
				rd.include(request, response);;
			}
		}catch(Exception e){
			System.out.println(e);
		}
	}


}
