package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class delete
 */
@WebServlet("/delete")
public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			PrintWriter out=response.getWriter();
			String id=request.getParameter("id");
			Connection cn=ConnectData.getCn();
			String sql="delete from sdetails where id=?";
			PreparedStatement ps=cn.prepareStatement(sql);
		    ps.setString(1, id);
		    ps.execute();
		    
		 
				
							String sql1="delete from customer where id=?";
							ps=cn.prepareStatement(sql1);
							ps.setString(1, id);
							ps.execute();
		    
		    
		    
		    
		    out.println("record deleted");		
				RequestDispatcher rd=request.getRequestDispatcher("Delete.html");
				rd.include(request, response);
		}catch(Exception e){
			System.out.println(e);
		}
			}
	}

