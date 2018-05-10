<%-- 
    Document   : insert
    Created on : 05 10, 18, 3:34:42 PM
    Author     : HannaDeza
--%>
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
   <%
   try
   {
       String name=request.getParameter("name");
       String email=request.getParameter("email");
       String number=request.getParameter("number");
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/practicumproj";
       String username="root";
       String password="";
       String query="insert into participant(p_name,p_email,p_number) values ('"+name+"','"+email+"','"+number+"')";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);  
    String redirectURL = "insert.jsp";
    response.sendRedirect(redirectURL);

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

