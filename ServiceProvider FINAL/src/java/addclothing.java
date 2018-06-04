/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author jelly
 */
@WebServlet(urlPatterns = {"/addclothing"})
@MultipartConfig(maxFileSize = 16177215)
public class addclothing extends HttpServlet {
    
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession();
            
            
               String category_id=request.getParameter("category_id");
               String category_name=request.getParameter("category_name");
               String collection_name=request.getParameter("collection_name");
               String collection_price=request.getParameter("collection_price");
               String collection_info=request.getParameter("collection_info");
               String collection_quantity=request.getParameter("collection_quantity");
               String n=(String)session.getAttribute("shop_name");
               Part part = request.getPart("file");
               String fileName = extractFileName(part);
               String savePath="D:\\ServiceProvider\\web\\images" + File.separator + fileName;
               File fileSaveDir = new File(savePath);
               part.write(savePath + File.separator);
        
             
               try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://192.168.5.87:3306/rental", "root1", "");
                PreparedStatement pst = con.prepareStatement("insert into collection(category_id, collection_name, collection_price, collection_info, collection_quantity, shop_name, filename, path, category_name) values (?,?,?,?,?,?,?,?,?)");
                pst.setString(1,category_id);
                pst.setString(2,collection_name);
                pst.setString(3,collection_price);
                pst.setString(4,collection_info);
                pst.setString(5,collection_quantity);
                pst.setString(6,n);
                pst.setString(7,fileName);
                pst.setString(8,savePath);
                pst.setString(9,category_name);
                int result = pst.executeUpdate();
                     if (result>0){
                        String site = "http://www.mademoiselle.com:8084/ServiceProvider/collections.jsp";
                        response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
                        response.setHeader("Location",site);
                         }
               }catch (ClassNotFoundException | SQLException e){
                   out.println(e);
               }                       
         }

   private String extractFileName(Part part){
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items){
                 if (s.trim().startsWith("filename")){
                     return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
    
