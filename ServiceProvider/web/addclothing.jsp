<%@page import="java.sql.*,java.util.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>


<%
    
   String name=request.getParameter("apparelname");
   String category=request.getParameter("apparelcategory");
   String info=request.getParameter("apparelinfo");
   String quantity=request.getParameter("apparelquantity");
    String price=request.getParameter("apparelprice");

    
    
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rental", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into shop_collection(cloth_name, cloth_category, cloth_info, cloth_quantity, cloth_price) values ('"+name+"','"+category+"','"+info+"','"+quantity+"','"+price+"')");
if(i >= 1)
{
String site = new String("http://localhost:8084/ServiceProvider/collections.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
}else{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
%> 













         