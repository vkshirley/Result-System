/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author Admin
 */
public class LoginDisplay extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("Username");
        String password = request.getParameter("password");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Login Details</title>");
            out.println("</head>");
            out.println("<style>");     // start style
            out.println("body {");        
            out.println("    font-family: TimesNewroman;\n" +
"");
  out.println("height: 100vh;");
  out.println("  background: linear-gradient(to right, #333333, #dd1818); \n" +
"");
  out.println("}");   
  out.println("h1,h2,h3,a {");        // note leading brace
  out.println("color:white;");
  out.println("text-align:center");
  out.println("}");          
  out.println("</style>");
            out.println("<body>");
            try {
                Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
                String url = "jdbc:mysql://localhost:3306/result";
                Connection conn = DriverManager.getConnection(url, "root", "");
                PreparedStatement pst = conn.prepareStatement("Select * from register where UName=? AND Password=?");
                pst.setString(1, username);
                pst.setString(2, password);
                ResultSet rs = pst.executeQuery();
                if (rs.next()) {
                    out.println("<h1>Login Successful </h1>");
                    out.println("<br><br><br><h1><a href='manageS.jsp'>Manage Student Records </a></h1>");
//                    out.println("<form action = 'table.jsp' >");
//                    out.println("<input type ='submit' value ='submit' />");
//                    out.println("</form>");
                    
                    
                } else {
                    out.println("<h1>Login Unsuccessful</h1>");
                }
            } catch (Exception e) {
                e.printStackTrace();
                out.println(e.getMessage());
            }
            //out.println("<h4>Username : " + username + "<br> Password :" + password + "</h4>");

            out.println("</body>");
            out.println("</html>");
        }

        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
//out.println("<h4>Username : " + username + "<br> Password :" + password + "</h4>");
// out.print("<h2> <a href = 'table.jsp?'> click Here for data manipulation </a></h2> ");

//out.print("<form action = 'table.jsp' ");
//            out.print("</form>");
//            out.println("</body>");
//            out.println("</html>");
