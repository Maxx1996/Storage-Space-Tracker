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
<table align="center" border="3"  bgcolor="cyan">
<tr><th colspan="3" align="center">		Shipment details	</th></tr>
<tr><th> SID </th><th> SInTime </th><th> SOutTime </th><th> SInDate </th><th> SOutDate </th><tr>
<%
try{
	PrintWriter x=response.getWriter();
	String id=request.getParameter("id");
	String password=request.getParameter("password");
	Connection cn=ConnectData.getCn();
	String sql="Select id, password from customer where id=? and password=?";
	PreparedStatement ps=cn.prepareStatement(sql);
    ps.setString(1, id);
    ps.setString(2, password);
    ResultSet rs=ps.executeQuery(); 
		if(rs.next()){
					String sql1="Select * from maintenance where id=?";
					ps=cn.prepareStatement(sql1);
					ps.setString(1, id);
					rs=ps.executeQuery();
					while(rs.next())
										{	
		
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
</tr>
<%										} %>
<%			}else
					{
					x.println("id not found.....");
					}%>
<%}catch(Exception e){
		System.out.println(e);
		}%>
</table>

</body>
</html>