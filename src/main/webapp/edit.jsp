<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Laptop</title>
</head>
<body>
  <%
    int pid = Integer.parseInt(request.getParameter("pid")); // Get the PID from the URL parameter
    Connection connection = null;
    PreparedStatement statement = null;
    ResultSet resultSet = null;
    String pname = "";
    int pcost = 0;
    String pimage = "";
    
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/adv_db", "root", "Root");
        
        // Fetch laptop details by pid
        String query = "SELECT * FROM laptops WHERE pid = ?";
        statement = connection.prepareStatement(query);
        statement.setInt(1, pid);
        resultSet = statement.executeQuery();
        
        if (resultSet.next()) {
            pname = resultSet.getString("pname");
            pcost = resultSet.getInt("pcost");
            pimage = resultSet.getString("pimage");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
  %>
  <form action="update.jsp" method="post" style="margin: 50px auto; width: 600px; padding: 20px; border: 1px solid #ccc; border-radius: 10px; background-color: #f9f9f9; text-align: center;">
    <!-- Input for PID (hidden field) -->
    <input type="hidden" name="pid" value="<%= pid %>">
    
    <!-- Input for PName -->
    <input type="text" name="pname" placeholder="Enter PName" value="<%= pname %>" 
           style="width: 80%; padding: 12px; font-size: 16px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px;">
    <br>
    
    <!-- Input for PCost -->
    <input type="number" name="pcost" placeholder="Enter PCost" value="<%= pcost %>" 
           style="width: 80%; padding: 12px; font-size: 16px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px;">
    <br>
    
    <!-- Input for PImage -->
    <input type="text" name="pimage" placeholder="Enter PImage" value="<%= pimage %>" 
           style="width: 80%; padding: 12px; font-size: 16px; margin-bottom: 20px; border: 1px solid #ccc; border-radius: 5px;">
    <br>
    
    <!-- Submit Button -->
    <input type="submit" value="Save" 
           style="padding: 15px 30px; font-size: 18px; color: white; background-color: #808080; border: none; border-radius: 5px; cursor: pointer; margin-right: 20px;" 
           onmouseover="this.style.backgroundColor='#45a049'" onmouseout="this.style.backgroundColor='#808080'">

    <!-- Back Button -->
    <a href="viewlaptops.jsp" style="text-decoration: none;">
        <button type="button" 
                style="padding: 15px 30px; font-size: 18px; color: white; background-color: #808080; border: none; border-radius: 5px; cursor: pointer;" 
                onmouseover="this.style.backgroundColor='#f44336'" onmouseout="this.style.backgroundColor='#808080'">
            Back
        </button>
    </a>
  </form>
</body>
</html>
