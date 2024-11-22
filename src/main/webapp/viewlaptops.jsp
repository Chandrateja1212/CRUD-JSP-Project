<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View Laptops</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    table {
      width: 70%;
      margin: 40px auto;
      border-collapse: collapse;
    }
    th, td {
      padding: 10px;
      text-align: center;
      border: 1px solid #ddd;
    }
    th {
      background-color: #f2f2f2;
    }
    button {
      padding: 10px 20px;
      font-size: 16px;
      background-color: #808080;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background-color: #4CAF50;
    }
    .delete-button:hover {
      background-color: #f44336;
    }
  </style>
</head>
<body>

  <a href="add.jsp" style="margin-left: 615px; text-decoration: none;">
    <button style="margin-top:20px"  onmouseover="this.style.backgroundColor='#4CAF50'" onmouseout="this.style.backgroundColor='#808080'">
      Add Laptops
    </button>
  </a>

  <table>
    <tr>
      <th>PID</th>
      <th>PName</th>
      <th>PCost</th>
      <th>PImage</th>
      <th>Edit</th>
      <th>Delete</th>
    </tr>
    <%
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/adv_db", "root", "Root");
      Statement statement = connection.createStatement();
      ResultSet resultSet = statement.executeQuery("SELECT * FROM laptops");
      while (resultSet.next()) {
    %>
    <tr>
      <td><%= resultSet.getInt("pid") %></td>
      <td><%= resultSet.getString("pname") %></td>
      <td><%= resultSet.getInt("pcost") %></td>
      <td>
        <img src="<%= resultSet.getString("pimage") %>" width="50px" alt="Image">
      </td>
      <td>
        <a href="edit.jsp?pid=<%= resultSet.getInt("pid") %>" style="text-decoration: none;">
          <button  onmouseover="this.style.backgroundColor='#45a049'" onmouseout="this.style.backgroundColor='#808080'">
            <i class="fa fa-edit"></i> 
          </button>
        </a>
      </td>
      <td>
        <a href="delete.jsp?pid=<%= resultSet.getInt("pid") %>" style="text-decoration: none;">
          <button class="delete-button" onmouseover="this.style.backgroundColor='#f44336'" onmouseout="this.style.backgroundColor='#808080'">
            <i class="fa fa-trash"></i> 
          </button>
        </a>
      </td>
    </tr>
    <%
      }
      connection.close();
    %>
  </table>

</body>
</html>
