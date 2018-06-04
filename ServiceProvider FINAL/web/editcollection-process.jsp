<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://192.168.5.87:3306/rental";%>
<%!String user = "root1";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String collection_name=request.getParameter("collection_name");
String category_name=request.getParameter("category_name");
String collection_price=request.getParameter("collection_price");
String collection_quantity=request.getParameter("collection_quantity");
String collection_contactperson=request.getParameter("collection_contactperson");
String collection_contact=request.getParameter("collection_contact");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update collection set collection_name=?, category_name=?, collection_price=?, collection_quantity=? where collection_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, collection_name);
ps.setString(2, category_name);
ps.setString(3, collection_price);
ps.setString(4, collection_quantity);
int i = ps.executeUpdate();
if(i >= 1)
{
String site = new String("http://www.mademoiselle.com:8084/ServiceProvider/collections.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
         
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>