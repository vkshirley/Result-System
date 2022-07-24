package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class students_005fresult_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .tag{\n");
      out.write("\n");
      out.write("                background: #cccccc;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .tag1{\n");
      out.write("                \n");
      out.write("                background:lightblue;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div style =\"width:30%;float:right;padding:100px;\">\n");
      out.write("            <h3 class =\"tag\">Add new student...(click below link)</h3> \n");
      out.write("            <a href =\"add_new.html\">Add new students </a> \n");
      out.write("\n");
      out.write("            <h3 class =\"tag\">Update students details...(click below link)</h3>\n");
      out.write("            <a href =\"up_st_dt.jsp\">Update student details</a>\n");
      out.write("\n");
      out.write("            <h3 class =\"tag\">Delete students details...(click below link)</h3>\n");
      out.write("            <a href =\"dt_st_dt.jsp\">Delete student details</a>\n");
      out.write("\n");
      out.write("            <h3 class =\"tag\">All Registered Student...(click below link)</h3>\n");
      out.write("            <a href =\"all_stu_info.jsp\">Registered Student</a> \n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div style =\"width:30%;padding:100px;\">\n");
      out.write("            <h3 class =\"tag1\">Insert new result...(click below link)</h3>\n");
      out.write("            <a href =\"insert_new.html\">Insert new result </a> \n");
      out.write("\n");
      out.write("            <h3 class =\"tag1\">Update students marks...(click below link)</h3>\n");
      out.write("            <a href =\"up_st_mks.html\">Update Students Marks</a> \n");
      out.write("\n");
      out.write("            <h3 class =\"tag1\">Delete students marks...(click below link)</h3>\n");
      out.write("            <a href =\"dt_st_mks.jsp\">Delete Students marks</a> \n");
      out.write("\n");
      out.write("            <h3 class =\"tag1\">All student result...(click below link)</h3>\n");
      out.write("            <a href =\"all_stu_result.jsp\">All student result</a> \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <h1 class =\"tag\">Logout</h1>\n");
      out.write("        <a href =\"admin_main.jsp\">Logout</a> \n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
