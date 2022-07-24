/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VAIBHAV
 */
public class adminforgotsession extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet adminforgotsession</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adminforgotsession at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
        String UName = request.getParameter("UName");
        String password = request.getParameter("password");
        Boolean l1 = false;
        Boolean l2 = false;
       
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/result";
            Connection con = DriverManager.getConnection(url, "root", "");           
            PreparedStatement ps=con.prepareStatement("select * from register where UName = ?");
            ps.setString(1,UName);            
            ResultSet rs=ps.executeQuery();
            rs.next(); 
            if(UName.equals(UName))
                 l1= true;
            if(password.equals(password))
                l2 = true;
            
            if(l1 && l2){
                PreparedStatement pss=con.prepareStatement("update register set Password = ? where UName = ?");
                pss.setString(1,password);
                pss.setString(2,UName);
                pss.executeUpdate();
                //out.println("password changes");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Password Updated Succesfully');");
                 out.println("window.location.href = \"admin_main.jsp\";");
               out.println("</script>");
                
            }
            else{
                out.println("Wrong Entries!");
                out.println("<br><br><br><a href='adminforgotpass.html'>Try again</a>");
            }
                
            
        }
        catch (ClassNotFoundException ce) {
            out.println("class not found");
            out.println(ce.getStackTrace());
        }
        catch (SQLException se) {
            out.println("Wrong Entries!");
            out.println("<br><br><br><a href='adminforgotpass.html'>Try again</a>");
        }
        catch(Exception e){
            out.println(e.getStackTrace());
            
        }
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
