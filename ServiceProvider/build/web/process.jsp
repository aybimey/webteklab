<%-- 
    Document   : process
    Created on : 05 8, 18, 9:37:48 PM
    Author     : HannaDeza
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String number=request.getParameter("contact");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/practicumproj", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into participant(name,email,number)values('"+name+"','"+email+"','"+number+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>