<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String shop_owner=request.getParameter("shop_owner");
String shop_name=request.getParameter("shop_name");
String password=request.getParameter("password");
String address=request.getParameter("address");
String shop_contact=request.getParameter("shop_contact");
String shop_info=request.getParameter("shop_info");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/rental", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into serviceprovider(shop_owner,shop_name,password,address,shop_contact,shop_info)value('"+shop_owner+"','"+shop_name+"','"+password+"','"+address+"','"+shop_contact+"','"+shop_info+"')");
out.println("Thank you for register ! Please <a href='index.jsp'>Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>