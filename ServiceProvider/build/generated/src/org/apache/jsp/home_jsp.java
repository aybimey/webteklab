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

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!-- meta -->\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\">\r\n");
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("\t\t\t<div class=\"logo-left\" style=\"float:left; width:30%;\">\r\n");
      out.write("\t\t\t\t<img src=\"images/gown.png\">\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"logo-right\" style=\"float:right; width:70%;\">\r\n");
      out.write("\t\t\t\t<a href=\"index.html\"><h1 style=\"font-family: 'Great Vibes', cursive; margin-top:2.5%;\">Madamoiselle</h1></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"responsive\"><i data-icon=\"m\" class=\"ion-navicon-round\"></i></div>\r\n");
      out.write("\t\t\r\n");
      out.write("        <ul class=\"nav-menu list-unstyled\" style=\"margin-top:0%;\">\r\n");
      out.write("          <li><a href=\"home.html\" class=\"smoothScroll\" style=\"color:#b8a07e;\">Home</a></li>\r\n");
      out.write("          <li><a href=\"collections.html\" class=\"smoothScroll\">Collections</a></li>\r\n");
      out.write("          <li><a href=\"planner.html\" class=\"smoothScroll\">Planner</a></li>\r\n");
      out.write("          <li><a href=\"messages.html\" class=\"smoothScroll\">Messages</a></li>\r\n");
      out.write("          <li><a href=\"#\" class=\"smoothScroll\">Logout</a></li>\r\n");
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
      out.write("        <h2>Name of your shop</h2>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("      <div class=\"journal-block\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-lg-4 col-md-6\">\r\n");
      out.write("            <div class=\"journal-info mb-30\">\r\n");
      out.write("\r\n");
      out.write("              <a href=\"blog-single.html\"><img src=\"images/blog-post-1.jpg\" class=\"img-responsive\" alt=\"img\"></a>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"journal-txt\">\r\n");
      out.write("\r\n");
      out.write("                <h4><a href=\"blog-single.html\">SO LETS MAKE THE MOST IS BEAUTIFUL</a></h4>\r\n");
      out.write("                <p class=\"separator\">To an English person, it will seem like simplified English\r\n");
      out.write("                </p>\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                 ");

   try
   {
       Class.forName("com.mysql.jdbc.Driver");
       String url="jdbc:mysql://localhost:3306/practicumproj";
       String username="root";
       String password="";
       String query="select * from participant";
       Connection conn=DriverManager.getConnection(url, username, password);
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(query);
       while(rs.next())
       {
   
      out.write("\r\n");
      out.write("        <tr><td>");
      out.print(rs.getString("p_name") );
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print(rs.getString("p_email") );
      out.write("</td>\r\n");
      out.write("        <td>");
      out.print(rs.getInt("p_number") );
      out.write("</td>\r\n");
      out.write("        <td><a href=\"insert.jsp\">Add Person</a></td>\r\n");
      out.write("        <td><a href=\"update.jsp?id=");
      out.print(rs.getString("p_id"));
      out.write("\">Edit</a></td>\r\n");
      out.write("        <td><a href=\"delete.jsp?id=");
      out.print(rs.getString("p_id"));
      out.write("\">Delete</a></td>\r\n");
      out.write("       \r\n");
      out.write("        </tr>\r\n");
      out.write("          ");

       }
   
      out.write("\r\n");
      out.write("   </table>\r\n");
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
      out.write("        \r\n");
      out.write("\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-lg-4 col-md-6\">\r\n");
      out.write("            <div class=\"journal-info mb-30\">\r\n");
      out.write("\r\n");
      out.write("              <a href=\"blog-single.html\"><img src=\"images/blog-post-2.jpg\" class=\"img-responsive\" alt=\"img\"></a>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"journal-txt\">\r\n");
      out.write("\r\n");
      out.write("                <h4><a href=\"blog-single.html\">WE'RE GONA MAKE DREAMS COMES</a></h4>\r\n");
      out.write("                <p class=\"separator\">To an English person, it will seem like simplified English\r\n");
      out.write("                </p>\r\n");
      out.write("\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-lg-4 col-md-6\">\r\n");
      out.write("            <div class=\"journal-info mb-30\">\r\n");
      out.write("\r\n");
      out.write("              <a href=\"blog-single.html\"><img src=\"images/blog-post-3.jpg\" class=\"img-responsive\" alt=\"img\"></a>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"journal-txt\">\r\n");
      out.write("\r\n");
      out.write("                <h4><a href=\"blog-single.html\">NEW LIFE CIVILIZATIONS TO BOLDLY</a></h4>\r\n");
      out.write("                <p class=\"separator\">To an English person, it will seem like simplified English\r\n");
      out.write("                </p>\r\n");
      out.write("\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-lg-4 col-md-6\">\r\n");
      out.write("            <div class=\"journal-info mb-30\">\r\n");
      out.write("\r\n");
      out.write("              <a href=\"blog-single.html\"><img src=\"images/blog-post-1.jpg\" class=\"img-responsive\" alt=\"img\"></a>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"journal-txt\">\r\n");
      out.write("\r\n");
      out.write("                <h4><a href=\"blog-single.html\">SO LETS MAKE THE MOST IS BEAUTIFUL</a></h4>\r\n");
      out.write("                <p class=\"separator\">To an English person, it will seem like simplified English\r\n");
      out.write("                </p>\r\n");
      out.write("\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-lg-4 col-md-6\">\r\n");
      out.write("            <div class=\"journal-info mb-30\">\r\n");
      out.write("\r\n");
      out.write("              <a href=\"blog-single.html\"><img src=\"images/blog-post-2.jpg\" class=\"img-responsive\" alt=\"img\"></a>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"journal-txt\">\r\n");
      out.write("\r\n");
      out.write("                <h4><a href=\"blog-single.html\">WE'RE GONA MAKE DREAMS COMES</a></h4>\r\n");
      out.write("                <p class=\"separator\">To an English person, it will seem like simplified English\r\n");
      out.write("                </p>\r\n");
      out.write("\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-lg-4 col-md-6\">\r\n");
      out.write("            <div class=\"journal-info mb-30\">\r\n");
      out.write("\r\n");
      out.write("              <a href=\"blog-single.html\"><img src=\"images/blog-post-3.jpg\" class=\"img-responsive\" alt=\"img\"></a>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"journal-txt\">\r\n");
      out.write("\r\n");
      out.write("                <h4><a href=\"blog-single.html\">NEW LIFE CIVILIZATIONS TO BOLDLY</a></h4>\r\n");
      out.write("                <p class=\"separator\">To an English person, it will seem like simplified English\r\n");
      out.write("                </p>\r\n");
      out.write("\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("  <!-- End section journal -->\r\n");
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
      out.write("      <div class=\"credits\">\r\n");
      out.write("        <!--\r\n");
      out.write("          All the links in the footer should remain intact.\r\n");
      out.write("          You can delete the links only if you purchased the pro version.\r\n");
      out.write("          Licensing information: https://bootstrapmade.com/license/\r\n");
      out.write("          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Folio\r\n");
      out.write("        -->\r\n");
      out.write("        Designed by <a href=\"https://bootstrapmade.com/\">BootstrapMade</a>\r\n");
      out.write("      </div>\r\n");
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
