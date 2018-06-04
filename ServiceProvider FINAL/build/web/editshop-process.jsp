<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

 <%
    if(session.getAttribute( "shop_name" ) == null || session.getAttribute( "shop_name" )== ""){
        session.setAttribute("message", "Please Login");
%>       
<script>
function myFunction() {
    alert("Please Login!");
}
</script>
<%
         response.sendRedirect(response.encodeRedirectURL("http://www.mademoiselle.com:8084/ServiceProvider/index.jsp"));
    }

%>
    
<%
String shop_id = request.getParameter("shop_id");
String shop_info = request.getParameter("shop_info");
String shop_contact=request.getParameter("shop_contact");
String address=request.getParameter("address");
if(shop_id != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://192.168.5.87:3306/rental", "root1", "");
Statement st=conn.createStatement();
int i= st.executeUpdate("Update serviceprovider set shop_info='"+shop_info+"',shop_contact='"+shop_contact+"',address='"+address+"' where shop_id='"+shop_id+"'");

if(i >= 1)
{
String site = new String("http://www.mademoiselle.com:8084/ServiceProvider/home.jsp");
    response.setStatus(response.SC_MOVED_TEMPORARILY);
    response.setHeader("Location",site);
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