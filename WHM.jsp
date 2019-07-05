<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*,controller.*,java.io.*" %>
<body>
<table border="3" align="center"  bgcolor="cyan">
<tr><th>ID</th><th>AllocSpace</th></tr>
<%
try{
	Connection cn=ConnectData.getCn();
	String sql="select id,allocspace from customer";
	PreparedStatement ps=cn.prepareStatement(sql);
	ResultSet rs=ps.executeQuery();
	int total=0;
	while(rs.next()){
		total=total+Integer.parseInt(rs.getString(2));
	%>
	<tr><td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td></tr>
	
<%} %>
<tr><td>Total</td><td><%=total %></td></tr>
	
<%}catch(Exception e){
	System.out.println(e);
}%>
</table>
</body>
</html>