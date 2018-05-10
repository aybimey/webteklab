<%-- 
    Document   : test
    Created on : 05 10, 18, 1:49:39 AM
    Author     : HannaDeza
--%>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>

<form method="post">

<table border="2">
   <tr>
        <td>name</td>
        <td>email</td>
        <td>number</td>
   </tr>
   <%
   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/practicumproj";
       String username="root";
       String password="";
       String query="select * from participant";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   %>
        <tr><td><%=rs.getString("p_name") %></td>
        <td><%=rs.getString("p_email") %></td>
        <td><%=rs.getInt("p_number") %></td></tr>
        

   <%
       }
   %>
   </table>
   <%
        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
</form>

    </body>
</html>
