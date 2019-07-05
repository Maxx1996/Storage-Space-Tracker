<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,controller.*" %>
<table align="center" border="3" bgcolor="cyan">
<tr><th colspan="3">Customer details</th></tr>
<tr><th>ID</th><th>Password</th><th>AllocSpace</th>
<%
try{
	String id=request.getParameter("id");
	Connection cn=ConnectData.getCn();
	String sql="Select * from customer where id=?";
	PreparedStatement ps=cn.prepareStatement(sql);
    ps.setString(1, id);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
</tr>
<%} %>
<%}catch(Exception e){
		System.out.println(e);
		}%>
</table>

</body>
</html>