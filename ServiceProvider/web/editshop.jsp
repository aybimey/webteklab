<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/rental";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
String id = request.getParameter("shopid");
String name = request.getParameter("shopname");
String address=request.getParameter("shopaddress");
String info=request.getParameter("shopinfo");
String contact=request.getParameter("shopcontact");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update serviceprovider set shop_name=?, address=?, shop_info=?, shop_contact=? where shop_id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, address);
ps.setString(3, info);
ps.setString(4, contact);
int i = ps.executeUpdate();
if(i >= 1)
{
String site = new String("http://localhost:8084/ServiceProvider/home.jsp");
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