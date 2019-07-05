<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,controller.*,java.io.*" %>
<table align="center" border="5"  bgcolor="cyan">
<tr><th colspan="3" align="center">		values inserted successfully	</th></tr>
<%
try{
	Connection cn=ConnectData.getCn();
	PrintWriter x=response.getWriter();
	String sql="select id,allocspace from customer";
	PreparedStatement ps=cn.prepareStatement(sql);	
	ResultSet rs=ps.executeQuery();
	int total=0;
	while(rs.next()){
	total=total+Integer.parseInt(rs.getString(2));
	}
	String id="u"+((int)(Math.random()*1000));
	String password=request.getParameter("password");
	String allocspace=request.getParameter("allocspace");
	String sindate=request.getParameter("sindate");
	String soutdate=request.getParameter("soutdate");
	if(Integer.parseInt(allocspace)<=(10000-total)){
	String sql1="insert into customer values(?,?,?)";
	ps=cn.prepareStatement(sql1);
    ps.setString(1, id);
    ps.setString(2, password);
    ps.setString(3, allocspace);
    ps.execute();
    String sql2="insert into sdetails values(?,?,?)";
    ps=cn.prepareStatement(sql2);
    ps.setString(1, id);
    ps.setString(2, sindate);
    ps.setString(3, soutdate);    
	ps.execute();
	String sql3="insert into maintenance values(?,?,?,?,?)";
	ps=cn.prepareStatement(sql3);
	ps.setString(1, id);
	ps.setString(2, null);
	ps.setString(3, null);
	ps.setString(4, sindate);
	ps.setString(5, soutdate);
	ps.execute();
	}else
		{
		x.println("Insufficient space");
		RequestDispatcher rd=request.getRequestDispatcher("Regis.html");
		rd.include(request, response);
	}
%>
<tr><th>Your ID is:<%=id %></th></tr>
<%}catch(Exception e){
		System.out.println(e);
		}%>
</table>

</body>
</html>