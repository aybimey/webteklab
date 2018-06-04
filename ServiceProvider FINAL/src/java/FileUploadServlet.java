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

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author jelly
 */
@WebServlet(urlPatterns = {"/FileUploadServlet"})
@MultipartConfig(maxFileSize = 16177215)

public class FileUploadServlet extends HttpServlet {

    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
        
        String name = request.getParameter("name");
        Part part = request.getPart("file");
        String fileName = extractFileName(part);
        String savePath="D:\\ServiceProvider\\web\\images" + File.separator + fileName;
        File fileSaveDir = new File(savePath);
        
        part.write(savePath + File.separator);
        
        /*for (Part part : request.getParts()){
            String fileName = extractFileName(part);
            part.write(savePath + File.separator + fileName);
        }*/
        
        try{
         Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://192.168.5.87:3306/rental", "root1", "");
         PreparedStatement pst = con.prepareStatement("insert into image values (?,?,?)");
         pst.setString(1, name);
         pst.setString(2,fileName);
         pst.setString(3,savePath);
         pst.executeUpdate();
         out.println("<center><a href='display.jsp?name=" + name + "'>Display</a></center>");
        }catch (Exception e){
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
    

