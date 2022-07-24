package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class content_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("  background: linear-gradient(to right, #43c6ac, #191654); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .split {\n");
      out.write("                height: 90%;\n");
      out.write("                width: 50%;\n");
      out.write("                position: fixed;\n");
      out.write("                z-index: 1;\n");
      out.write("                top:110;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Control the left side */\n");
      out.write("            .left {\n");
      out.write("                left: 0;\n");
      out.write("  background: linear-gradient(to right, #43c6ac, #191654); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Control the right side */\n");
      out.write("            .right {\n");
      out.write("                right: 0;\n");
      out.write("  background: linear-gradient(to right, #43c6ac, #191654); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /*content centered horizontally and vertically */\n");
      out.write("            .centered {\n");
      out.write("                position: absolute;\n");
      out.write("                top: 50%;\n");
      out.write("                left: 50%;\n");
      out.write("                transform: translate(-50%, -50%);\n");
      out.write("                text-align: center;\n");
      out.write("            }\n");
      out.write("            .link{\n");
      out.write("                background-color: #034f84;\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("\n");
      out.write("        <div class=\"split left\">\n");
      out.write("            <div class=\"centered\">\n");
      out.write("\n");
      out.write("                <h1>STUDENTS</h1>\n");
      out.write("                <a href =\"student.html\" class =\"link\">STUDENT LOGIN </a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"split right\">\n");
      out.write("            <div class=\"centered\">\n");
      out.write("                <h1>ADMIN</h1>\n");
      out.write("                <a href =\"admin_main.jsp\" class=\"link\">ADMIN LOGIN</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
