<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int pid = Integer.parseInt(request.getParameter("pid"));
		String pname = request.getParameter("pname");
		int pcost = Integer.parseInt(request.getParameter("pcost"));
		String pimage = request.getParameter("pimage");
		Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection =  DriverManager.getConnection("jdbc:mysql://localhost:3306/adv_db","root","Root");
		PreparedStatement statement =  connection.prepareStatement("insert into laptops values(?,?,?,?)");
		statement.setInt(1, pid);
		statement.setString(2,pname);
		statement.setInt(3, pcost);
		statement.setString(4, pimage);
		int i = statement.executeUpdate();
		if(i>0){
			request.getRequestDispatcher("/viewlaptops.jsp").forward(request,response);
		}else{
			request.getRequestDispatcher("/add.jsp").forward(request,response);
		}
	%>
</body>
</html>