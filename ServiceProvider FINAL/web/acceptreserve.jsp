<%@ page import="java.sql.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            String url = "jdbc:mysql://192.168.5.87:3306/rental";
            FileInputStream fis = null;

            String id=request.getParameter("req_id");
            String req_lastname=request.getParameter("req_lastname");
            String req_firstname=request.getParameter("req_firstname");
            String req_contactnumber=request.getParameter("req_contactnumber");
            String req_collectionname=request.getParameter("req_collectionname");
            String req_categoryname=request.getParameter("req_categoryname");
            String req_quantity=request.getParameter("req_quantity");
            String req_size=request.getParameter("req_size");
            String req_price=request.getParameter("req_price");
            String req_datereserved=request.getParameter("req_datereserved");
            String req_datereturned=request.getParameter("req_datereturned");
try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                conn = DriverManager.getConnection(url, "root1", "");
                pstmt = conn.prepareStatement("insert into accepted_reservation (reservation_firstname, reservation_lastname, reservation_contact, reservation_collectionname, reservation_quantity, reservation_datereserved, reservation_datereturned, shop_name) values (?, ?, ?, ?, ?, ?, ?,?)");
                pstmt.setString(1, req_firstname);
                pstmt.setString(2, req_lastname);
                pstmt.setString(3, req_contactnumber);
                pstmt.setString(4, req_collectionname);
                pstmt.setString(5, req_quantity);
                pstmt.setString(6, req_datereserved);
                pstmt.setString(7, req_datereturned);
                pstmt.setObject(8, session.getAttribute("shop_name"));
                int count = pstmt.executeUpdate();
                if (count > 0) {
                    Statement st=conn.createStatement();
                    st.executeUpdate("DELETE FROM request_reservation WHERE req_id='"+id+"'");
                    String site = new String("http://www.mademoiselle.com:8084/ServiceProvider/planner.jsp");
                    response.setStatus(response.SC_MOVED_TEMPORARILY);
                    response.setHeader("Location", site); 
                    
                } else {
                    out.print("There is a problem....");
                    
                }
            } catch(SQLException sql) {
                request.setAttribute("error", sql);
                    out.println(sql);
            } finally {
                try {
                    if (rs != null) {
                        rs.close();
                        rs = null;
                    }
                    if (pstmt != null) {
                        pstmt.close();
                        pstmt = null;
                    }
                    if (conn != null) {
                        conn.close();
                        conn = null;
                    }
                } catch(SQLException sql) {
                    request.setAttribute("error", sql);
                    out.println(sql);
                }
            }
 
        %>