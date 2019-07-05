<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.io.*,controller.*" %>
<% 
try{
    Connection cn=ConnectData.getCn();
    HttpSession s=request.getSession(false);
    String id=request.getParameter("id");
    String sindate=request.getParameter("sindate");
    String soutdate=request.getParameter("soutdate");
    String sintime=request.getParameter("sintime");
    String souttime=request.getParameter("souttime");

    
    
    String update="update sdetails set sindate=?,soutdate=? where id=?";
    PreparedStatement ps=cn.prepareStatement(update);
    ps.setString(1, sindate);
    ps.setString(2, soutdate);
    ps.setString(3, id);
    ps.execute();
   	String update1="update maintenance set sintime=?,souttime=?,sindate=?,soutdate=? where id=?";
   	ps=cn.prepareStatement(update1);
    ps.setString(1, sintime);
    ps.setString(2, souttime);
    ps.setString(3, sindate);
    ps.setString(4, soutdate);
   	ps.setString(5, id);
    ps.execute();
    	    out.println("record updated...");
    	    RequestDispatcher rd=request.getRequestDispatcher("updateid.jsp");
			rd.include(request, response);
				    
		    
		    %>
		<%}catch(Exception e){
			System.out.println(e);
		 }

	 %>
</body>
</html>