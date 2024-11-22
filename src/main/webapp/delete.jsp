<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Laptop</title>
</head>
<body>
  <%
    int pid = Integer.parseInt(request.getParameter("pid")); // Get the PID from the URL parameter
    Connection connection = null;
    PreparedStatement statement = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/adv_db", "root", "Root");
        
        // SQL to delete laptop by pid
        String query = "DELETE FROM laptops WHERE pid = ?";
        statement = connection.prepareStatement(query);
        statement.setInt(1, pid);
        
        int i = statement.executeUpdate();
        if (i > 0) {
            response.sendRedirect("viewlaptops.jsp"); // Redirect back to the laptops listing page
        } else {
            out.println("Error in deleting record.");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
  %>
</body>
</html>
