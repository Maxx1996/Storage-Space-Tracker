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
<form action="update.jsp">
<table border="2" align="center"  bgcolor="cyan">
<tr><th colspan="2">Update</th></tr>
<tr><th>Enter ID:</th><th><input type="text" name="id"></th></tr>
<tr><td>Enter Shipment In Date :</td><td><input type="text" name="sindate"></td></tr>
<tr><td>Enter Shipment Out Date :</td><td><input type="text" name="soutdate"></td></tr>
<tr><td>Enter Shipment in time :</td><td><input type="text" name="sintime"></td></tr>
<tr><td>Enter Shipment out time :</td><td><input type="text" name="souttime"></td></tr>
<tr><th><input type="submit" value="update"></th></tr>
</table>

</form>
</body>
</html>