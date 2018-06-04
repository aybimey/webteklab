<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://192.168.5.87:3306/rental";%>
<%!String user = "root1";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
String info =request.getParameter("info");
String quantity=request.getParameter("quantity");
String price=request.getParameter("price");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update shopcollection set cloth_name=?, cloth_category=?, cloth_info=?, cloth_quantity=?, cloth_price=? where cloth_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, category);
ps.setString(3, info);
ps.setString(4, quantity);
ps.setString(5, price);
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