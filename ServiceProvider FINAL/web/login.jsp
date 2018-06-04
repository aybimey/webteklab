<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String shop_name=request.getParameter("shop_name"); 
String password=request.getParameter("password");


Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://192.168.5.87:3306/rental","root1","");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from serviceprovider where shop_name='"+shop_name+"' and password='"+password+"'"); 
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("shop_name").equals(shop_name)&&rs.getString("status").equals("activated")) 
{ 
String site1 = new String("http://www.mademoiselle.com:8084/ServiceProvider/home.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location",site1);
    session.setAttribute("shop_name", shop_name); 
    
}if(rs.getString("password").equals(password)&&rs.getString("shop_name").equals(shop_name)&&rs.getString("status").equals("pending")) 
{ 
    String site2 = new String("http://www.mademoiselle.com:8084/ServiceProvider/awaitingapproval2.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location",site2);  
}
}catch (Exception e) {
e.printStackTrace();
}
%>