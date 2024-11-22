<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <body>
    <form action="insert.jsp" style="margin: 50px auto; width: 600px; padding: 20px; border: 1px solid #ccc; border-radius: 10px; background-color: #f9f9f9; text-align: center;">
        <!-- Input for PID -->
        <input type="number" name="pid" placeholder="Enter PID" 
               style="width: 80%; padding: 12px; font-size: 16px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px;">
        <br>
        
        <!-- Input for PName -->
        <input type="text" name="pname" placeholder="Enter PName" 
               style="width: 80%; padding: 12px; font-size: 16px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px;">
        <br>
        
        <!-- Input for PCost -->
        <input type="number" name="pcost" placeholder="Enter PCost" 
               style="width: 80%; padding: 12px; font-size: 16px; margin-bottom: 15px; border: 1px solid #ccc; border-radius: 5px;">
        <br>
        
        <!-- Input for PImage -->
        <input type="text" name="pimage" placeholder="Enter PImage" 
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

    </form>
</body>


</body>
</html>