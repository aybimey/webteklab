<%-- 
    Document   : test2
    Created on : 05 10, 18, 2:57:01 PM
    Author     : HannaDeza
--%>

<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<HTML>
     <HEAD>
     <TITLE>Inserted data in a Table</TITLE>
     </HEAD>
     <BODY BGCOLOR="cyan">
     <H1>Inserted data in a Table</H1>
     <% 
         Connection connection =DriverManager.getConnection("jdbc:odbc:practicumproj");
         Statement statement = connection.createStatement();
         String command = "INSERT INTO participant(p_name, p_email, p_number) VALUES('haha,'Vikas',12123123)";
         statement.executeUpdate(command);
         command = "INSERT INTO participant(p_name, p_email, p_number) VALUES('haha,'Vikas',12123123)";
         statement.executeUpdate(command);
         ResultSet resultset = 
         statement.executeQuery("select * from Employee");
         while(resultset.next()){ 
      %>
        <TABLE BORDER="1">
          <TR>
              <TH>name</TH>
              <TH>email</TH>
              <TH>NUMBER</TH>
         </TR>
          <TR>
              <TD> <%= resultset.getString(1) %> </TD>
              <TD> <%= resultset.getString(2) %> </TD>
              <TD> <%= resultset.getString(3) %> </TD>
          </TR>
       </TABLE>
       <% 
        } 
       %>
      </BODY>
</HTML>
