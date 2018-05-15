package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;

public final class collections_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <!-- meta -->\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\r\n");
      out.write("  \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("  <title>Madameoiselle</title>\r\n");
      out.write("  <meta content=\"\" name=\"keywords\">\r\n");
      out.write("  <meta content=\"\" name=\"description\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Google Fonts -->\r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,500i,600,600i,700,700i|Playfair+Display:400,400i,700,700i,900,900i\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Bootstrap CSS File -->\r\n");
      out.write("  <link href=\"lib/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Libraries CSS Files -->\r\n");
      out.write("  <link href=\"lib/ionicons/css/ionicons.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"lib/owlcarousel/assets/owl.carousel.min.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"lib/magnific-popup/magnific-popup.css\" rel=\"stylesheet\">\r\n");
      out.write("  <link href=\"lib/hover/hover.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Blog Stylesheet File -->\r\n");
      out.write("  <link href=\"css/blog.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Main Stylesheet File -->\r\n");
      out.write("  <link href=\"css/style.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Responsive css -->\r\n");
      out.write("  <link href=\"css/responsive.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("  <!-- Favicon -->\r\n");
      out.write("  <link rel=\"shortcut icon\" href=\"images/favicon.png\">\r\n");
      out.write("  \r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Great+Vibes\" rel=\"stylesheet\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\r\n");
      out.write("   <link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("  <!-- start section navbar -->\r\n");
      out.write("  <nav id=\"main-nav-subpage\" class=\"subpage-nav\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"logo\" style=\" width:30%;\">\r\n");
      out.write("      <div class=\"logo-left\" style=\"float:left; width:30%;\">\r\n");
      out.write("        <img src=\"images/gown.png\">\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"logo-right\" style=\"float:right; width:70%;\">\r\n");
      out.write("        <a href=\"home.jsp\"><h1 style=\"font-family: 'Great Vibes', cursive; margin-top:2.5%;\">Madamoiselle</h1></a>\r\n");
      out.write("      </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"responsive\"><i data-icon=\"m\" class=\"ion-navicon-round\"></i></div>\r\n");
      out.write("    \r\n");
      out.write("        <ul class=\"nav-menu list-unstyled\" style=\"margin-top:0%;\">\r\n");
      out.write("          <li><a href=\"home.jsp\" class=\"smoothScroll\" ><span class=\"glyphicon glyphicon-home\" aria-hidden=\"true\"></span> Home</a></li>\r\n");
      out.write("          <li><a href=\"collections.jsp\" class=\"smoothScroll\" style=\"color:#b8a07e;\">Collections</a></li>\r\n");
      out.write("          <li><a href=\"planner.jsp\" class=\"smoothScroll\">Planner</a></li>\r\n");
      out.write("          <li><a href=\"reservation.jsp\" class=\"smoothScroll\">Reservation</a></li>\r\n");
      out.write("          <li><a href=\"transaction.jsp\" class=\"smoothScroll\">Transaction</a></li>\r\n");
      out.write("          <li><a href=\"#\" class=\"smoothScroll\"><i class=\"fa fa-caret-square-o-right\" aria-hidden=\"true\"></i> Logout</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </nav>\r\n");
      out.write("  <!-- End section navbar -->\r\n");
      out.write("\r\n");
      out.write("  <!-- start section journal -->\r\n");
      out.write("  <div id=\"journal-blog\" class=\"text-left  paddsections\" style=\"margin-top:5%;\">\r\n");
      out.write("\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <div class=\"section-title text-center\">\r\n");
      out.write("        <h2>My Apparel</h2>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("    <button type=\"button\" class=\"btn btn-secondary\" data-toggle=\"modal\" data-target=\"#myModal\">\r\n");
      out.write("          <i class=\"fa fa-plus\" aria-hidden=\"true\"></i> Add Apparel\r\n");
      out.write("      </button>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("<!-- The Modal -->\r\n");
      out.write("<div class=\"modal fade\" id=\"myModal\">\r\n");
      out.write("  <div class=\"modal-dialog\">\r\n");
      out.write("    <div class=\"modal-content\">\r\n");
      out.write("\r\n");
      out.write("      <!-- Modal Header -->\r\n");
      out.write("      <div class=\"modal-header\">\r\n");
      out.write("        <h4 class=\"modal-title\">Add Clothing</h4>\r\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-body\">\r\n");
      out.write("        <form class=\"form-group\" method=\"post\" action=\"addclothing.jsp\">\r\n");
      out.write("          <label for=\"exampleFormControlInput1\" name=\"apparelname\">Apparel Name:</label>\r\n");
      out.write("          <input type=\"text\" class=\"form-control\" id=\"exampleFormControlInput1\" aria-label=\"Small\" aria-describedby=\"inputGroup-sizing-sm\"> <br>\r\n");
      out.write("          Apparel Category: <select class=\"custom-select\" id=\"inputGroupSelect01\" name=\"apparelcategory\">\r\n");
      out.write("          <option selected>Choose...</option>\r\n");
      out.write("                            <option value=\"1\">Wedding Gown</option>\r\n");
      out.write("                            <option value=\"2\">Wedding Suit</option>\r\n");
      out.write("                            <option value=\"3\">Prom Dress</option> \r\n");
      out.write("                            <option value=\"4\">Prom Suit</option>\r\n");
      out.write("                            <option value=\"5\">Retro</option>\r\n");
      out.write("          </select> <br><br>\r\n");
      out.write("                            \r\n");
      out.write("          <label for=\"exampleFormControlInput1\">Apparel Info:</label> \r\n");
      out.write("          <input type=\"text\" name=\"apparelinfo\" class=\"form-control\" id=\"exampleFormControlInput1\" aria-label=\"Small\" aria-describedby=\"inputGroup-sizing-sm\"> <br>\r\n");
      out.write("\r\n");
      out.write("          <label for=\"exampleFormControlInput1\">Apparel Quantity:</label> \r\n");
      out.write("          <input type=\"text\" class=\"form-control\" name=\"apparelquantity\" id=\"exampleFormControlInput1\" aria-label=\"Small\" aria-describedby=\"inputGroup-sizing-sm\"> <br> \r\n");
      out.write("\r\n");
      out.write("          <label for=\"exampleFormControlInput1\">Apparel Price:</label> \r\n");
      out.write("          <input type=\"text\" class=\"form-control\" name=\"apparelprice\" id=\"exampleFormControlInput1\" aria-label=\"Small\" aria-describedby=\"inputGroup-sizing-sm\"> <br>\r\n");
      out.write("        </form>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"modal-footer\">\r\n");
      out.write("        <a href=\"addclothing.jsp\" class=\"btn btn-secondary\"><i class=\"fa fa-plus\" aria-hidden=\"true\"></i> Add</a>\r\n");
      out.write("        <button type=\"button\" class=\"btn btn-danger\" data-dismiss=\"modal\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i> Close</button>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("  </div>\r\n");
      out.write("  <div class=\"container\">\r\n");
      out.write("  <div class=\"row\">\r\n");
      out.write("   \r\n");
      out.write("      ");

   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/rental";
       String username="root";
       String password="";
       String query="select * from shop_collection";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   
      out.write("\r\n");
      out.write("    <div class=\"col-xs-3\">\r\n");
      out.write("      <div class=\"jumbotron\">\r\n");
      out.write("    <bold>Apparel Name:</bold> ");
      out.print(rs.getString("cloth_name") );
      out.write("<br>\r\n");
      out.write("    <bold>Apparel Category:</bold> ");
      out.print(rs.getString("cloth_category") );
      out.write("<br>\r\n");
      out.write("    <bold>Apparel Info:</bold> ");
      out.print(rs.getString("cloth_info") );
      out.write("<br>\r\n");
      out.write("    <bold>Apparel Quantity:</bold> ");
      out.print(rs.getString("cloth_quantity") );
      out.write("<br>\r\n");
      out.write("    <bold>Apparel Price:</bold> ");
      out.print(rs.getString("cloth_price") );
      out.write("<br><br>\r\n");
      out.write("    <button class=\"btn btn-secondary\"><i class=\"fa fa-pencil-square-o\" aria-hidden=\"true\"></i> Edit</button>\r\n");
      out.write("    <button class=\"btn btn-danger\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i> Delete</button>\r\n");
      out.write("    \r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("     <hr>\r\n");
      out.write("          ");

       }
   
      out.write("\r\n");
      out.write("   </div>\r\n");
      out.write("   ");

        rs.close();
        stmt.close();
        conn.close();
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <!-- start section footer -->\r\n");
      out.write("  <div id=\"footer\" class=\"text-center\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <div class=\"socials-media text-center\">\r\n");
      out.write("\r\n");
      out.write("        <ul class=\"list-unstyled\">\r\n");
      out.write("          <li><a href=\"#\"><i class=\"ion-social-facebook\"></i></a></li>\r\n");
      out.write("          <li><a href=\"#\"><i class=\"ion-social-twitter\"></i></a></li>\r\n");
      out.write("          <li><a href=\"#\"><i class=\"ion-social-instagram\"></i></a></li>\r\n");
      out.write("          <li><a href=\"#\"><i class=\"ion-social-googleplus\"></i></a></li>\r\n");
      out.write("          <li><a href=\"#\"><i class=\"ion-social-tumblr\"></i></a></li>\r\n");
      out.write("          <li><a href=\"#\"><i class=\"ion-social-dribbble\"></i></a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <p>&copy; Copyrights Folio. All rights reserved.</p>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <!-- End section footer -->\r\n");
      out.write("\r\n");
      out.write("  <!-- JavaScript Libraries -->\r\n");
      out.write("  <script src=\"lib/jquery/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"lib/jquery/jquery-migrate.min.js\"></script>\r\n");
      out.write("  <script src=\"lib/bootstrap/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("  <script src=\"lib/typed/typed.js\"></script>\r\n");
      out.write("  <script src=\"lib/owlcarousel/owl.carousel.min.js\"></script>\r\n");
      out.write("  <script src=\"lib/magnific-popup/magnific-popup.min.js\"></script>\r\n");
      out.write("  <script src=\"lib/isotope/isotope.pkgd.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  <!-- Contact Form JavaScript File -->\r\n");
      out.write("  <script src=\"contactform/contactform.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  <!-- Template Main Javascript File -->\r\n");
      out.write("  <script src=\"js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
