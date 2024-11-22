<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Laptop</title>
</head>
<body>
  <%
    int pid = Integer.parseInt(request.getParameter("pid"));
    String pname = request.getParameter("pname");
    int pcost = Integer.parseInt(request.getParameter("pcost"));
    String pimage = request.getParameter("pimage");

    Connection connection = null;
    PreparedStatement statement = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/adv_db", "root", "Root");

        // SQL to update laptop details
        String query = "UPDATE laptops SET pname = ?, pcost = ?, pimage = ? WHERE pid = ?";
        statement = connection.prepareStatement(query);
        statement.setString(1, pname);
        statement.setInt(2, pcost);
        statement.setString(3, pimage);
        statement.setInt(4, pid);
        
        int i = statement.executeUpdate();
        if (i > 0) {
            response.sendRedirect("viewlaptops.jsp"); // Redirect back to the laptops listing page
        } else {
            out.println("Error in updating record.");
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
