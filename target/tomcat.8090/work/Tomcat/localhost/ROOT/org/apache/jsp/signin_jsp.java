/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.89
 * Generated at: 2024-06-13 15:55:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(3);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"UTF-8\" />\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("    <title>Yasriman | Sign In</title>\r\n");
      out.write("    <link rel=\"icon\" href=\"https://i.ibb.co/F7PH3zS/logo.jpg\" type=\"image/png\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"./css/signin.css\" />\r\n");
      out.write("    <style type=\"text/css\">\r\n");
      out.write("    @import url(\"https://fonts.googleapis.com/css2?family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap\");\r\n");
      out.write("	@import url(\"https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap\");\r\n");
      out.write("	\r\n");
      out.write("	* {\r\n");
      out.write("	  margin: 0;\r\n");
      out.write("	  padding: 0;\r\n");
      out.write("	  box-sizing: border-box;\r\n");
      out.write("	  font-family: \"Inria Sans\", sans-serif;\r\n");
      out.write("	  /* transition: all 0.3s; */\r\n");
      out.write("	  overflow-x: hidden;\r\n");
      out.write("	  overflow-y: hidden;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	body {\r\n");
      out.write("	  background-color: #f5efe6;\r\n");
      out.write("	  /* max-width: 100vw;\r\n");
      out.write("	  max-height: 100vh; */\r\n");
      out.write("	  /* overflow-y: hidden; */\r\n");
      out.write("	  display: flex;\r\n");
      out.write("	  align-items: center;\r\n");
      out.write("	  justify-content: center;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	.all {\r\n");
      out.write("	    display: flex;\r\n");
      out.write("	    align-items: center;\r\n");
      out.write("	    justify-content: center;\r\n");
      out.write("	    height: 100vh;\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  .formcontainer {\r\n");
      out.write("	    display: flex;\r\n");
      out.write("	    align-items: center;\r\n");
      out.write("	    justify-content: space-evenly;\r\n");
      out.write("	    width: 1000px;\r\n");
      out.write("	  height: 650px;\r\n");
      out.write("	    color: #1a4d2e;\r\n");
      out.write("	    background-color: #fff;\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  .imagedisplay {\r\n");
      out.write("	    display: flex;\r\n");
      out.write("	    align-items: center;\r\n");
      out.write("	    justify-content: center;\r\n");
      out.write("	    flex-direction: column;\r\n");
      out.write("	    width: 50%;\r\n");
      out.write("	    height: 100%;\r\n");
      out.write("	    /* padding: 50px; */\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  .imagedisplay img {\r\n");
      out.write("	      width: auto; \r\n");
      out.write("	      height: 100%;   \r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  .formcontent {\r\n");
      out.write("	    display: flex;\r\n");
      out.write("	    align-items: center;\r\n");
      out.write("	    justify-content: center;\r\n");
      out.write("	    flex-direction: column;\r\n");
      out.write("	    width: 50%;\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  .formcontent input[type=\"text\"],\r\n");
      out.write("	  input[type=\"email\"],\r\n");
      out.write("	  input[type=\"password\"],\r\n");
      out.write("	  input[type=\"tel\"] {\r\n");
      out.write("	    background-color: transparent;\r\n");
      out.write("	    border: none;\r\n");
      out.write("	    border-bottom: 2px solid #1a4d2e;\r\n");
      out.write("	    outline: none;\r\n");
      out.write("	    padding: 5px;\r\n");
      out.write("	    transition: border-bottom 0.3s;\r\n");
      out.write("	    width: 95%;\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  .formcontent .firstline {\r\n");
      out.write("	    display: flex;\r\n");
      out.write("	    align-items: center;\r\n");
      out.write("	    justify-content: center;\r\n");
      out.write("	    gap: 20px;\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  .formcontent .secondline {\r\n");
      out.write("	    display: flex;\r\n");
      out.write("	    align-items: start;\r\n");
      out.write("	    justify-content: center;\r\n");
      out.write("	    flex-direction: column;\r\n");
      out.write("	    gap: 3px;\r\n");
      out.write("	    padding-top: 25px;\r\n");
      out.write("	    width: 100%;\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  .formcontent form .buttons input{\r\n");
      out.write("	     background-color: #1a4d2e;\r\n");
      out.write("	     color: #f5efe6;\r\n");
      out.write("	     padding: 10px 40px;\r\n");
      out.write("	     cursor: pointer;\r\n");
      out.write("	     margin-top: 20px;\r\n");
      out.write("	     outline: none;\r\n");
      out.write("	     border: none;\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  form {\r\n");
      out.write("	    display: flex;\r\n");
      out.write("	    align-items: center;\r\n");
      out.write("	    justify-content: center;\r\n");
      out.write("	    flex-direction: column;\r\n");
      out.write("	    gap: 10px;\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  form a { \r\n");
      out.write("	    text-decoration: none;\r\n");
      out.write("	    color: inherit;\r\n");
      out.write("	    font-weight: 400;\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  form .returnhome {\r\n");
      out.write("	    font-size: 15px;\r\n");
      out.write("	    text-decoration: none;\r\n");
      out.write("	    color: inherit;\r\n");
      out.write("	    font-weight: 400;\r\n");
      out.write("	    margin-top: 20px;\r\n");
      out.write("	    border-bottom: 2px solid #1a4d2e;\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  .signintext{\r\n");
      out.write("	    display: flex;\r\n");
      out.write("	    align-items: center;\r\n");
      out.write("	    gap: 30px;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	.signintext a{\r\n");
      out.write("	  /* display: flex;\r\n");
      out.write("	  border-bottom: 2px solid #1a4d2e;\r\n");
      out.write("	  gap: 30px; */\r\n");
      out.write("	  font-size: 13px; \r\n");
      out.write("	  border: 1px solid #1a4d2e;\r\n");
      out.write("	  background-color: #d5c7b2;\r\n");
      out.write("	  color: #1a4d2e;\r\n");
      out.write("	  padding: 5px 30px;\r\n");
      out.write("	  cursor: pointer;\r\n");
      out.write("	  /* margin-top: 20px; */\r\n");
      out.write("	  outline: none;\r\n");
      out.write("	  order: none;\r\n");
      out.write("	}\r\n");
      out.write("	  \r\n");
      out.write("	  form .signintext, form .buttons, form .returnhome{\r\n");
      out.write("	      font-size: 14px;\r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  h1{\r\n");
      out.write("	      margin-bottom: 20px;\r\n");
      out.write("	  }\r\n");
      out.write("	\r\n");
      out.write("	 input[type=\"text\"]:focus,\r\n");
      out.write("	input[type=\"email\"]:focus,\r\n");
      out.write("	input[type=\"password\"]:focus,\r\n");
      out.write("	input[type=\"tel\"]:focus {\r\n");
      out.write("	    border-bottom: 2px solid #d5c7b2;\r\n");
      out.write("	    transition: border-bottom 0.3s;\r\n");
      out.write("	\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	.passwordgroup {\r\n");
      out.write("	    display: flex;\r\n");
      out.write("	    align-items: center;\r\n");
      out.write("	    width: 100%;\r\n");
      out.write("	    margin-bottom: 25px;\r\n");
      out.write("	  }\r\n");
      out.write("	   \r\n");
      out.write("	  .passwordgroup img {\r\n");
      out.write("	    width: 15px;   \r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  @media (width <1024px) {\r\n");
      out.write("	    * {\r\n");
      out.write("	      font-size: 98%;\r\n");
      out.write("	    }\r\n");
      out.write("	  \r\n");
      out.write("	    .formcontainer {\r\n");
      out.write("	      flex-direction: column-reverse;\r\n");
      out.write("	      width: fit-content;\r\n");
      out.write("	      padding: 20px 0;\r\n");
      out.write("	      gap: 10px;\r\n");
      out.write("	      /* height: fit-content; */\r\n");
      out.write("	    }\r\n");
      out.write("	  \r\n");
      out.write("	    .imagedisplay {\r\n");
      out.write("	      height: 70px;\r\n");
      out.write("	      width: 80%;\r\n");
      out.write("	    }\r\n");
      out.write("	    .imagedisplay img {\r\n");
      out.write("	      object-fit: cover;\r\n");
      out.write("	      width: 100%;\r\n");
      out.write("	      height: 100%;\r\n");
      out.write("	      object-position: 0% 58%;\r\n");
      out.write("	    }\r\n");
      out.write("	    h1 {\r\n");
      out.write("	      font-size: 30px;\r\n");
      out.write("	    }\r\n");
      out.write("	    .formcontent\r\n");
      out.write("	    {\r\n");
      out.write("	      width: 80%;\r\n");
      out.write("	    } \r\n");
      out.write("	  }\r\n");
      out.write("	  \r\n");
      out.write("	  @media (width < 500px) {\r\n");
      out.write("	    .formcontainer\r\n");
      out.write("	    {\r\n");
      out.write("	      transform: scale(0.8);\r\n");
      out.write("	    }\r\n");
      out.write("	  }\r\n");
      out.write("    \r\n");
      out.write("    </style> \r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("    <div class=\"all\">\r\n");
      out.write("      <div class=\"formcontainer\"> \r\n");
      out.write("        <div class=\"formcontent\">\r\n");
      out.write("          <h1>SIGN IN</h1>\r\n");
      out.write("          ");

              	String signinerror = (String) session.getAttribute("signinerror");
          if (signinerror != null) {
              
      out.write("\r\n");
      out.write("              <p style=\"color: red; font-weight: 500;\">");
      out.print( signinerror );
      out.write("</p>\r\n");
      out.write("              ");
} 
      out.write("\r\n");
      out.write("          <form action=\"");
      out.print(request.getContextPath());
      out.write("/signinaccount\" method=\"post\" onsubmit=\"return validateForm()\">\r\n");
      out.write("            <div class=\"secondline\">\r\n");
      out.write("                <input type=\"email\" id=\"email\" name=\"email\" placeholder=\"Email\" autocomplete=\"off\" required><br />\r\n");
      out.write("                <div class=\"passwordgroup\">\r\n");
      out.write("                    <input\r\n");
      out.write("                        type=\"password\"\r\n");
      out.write("                        id=\"password\"\r\n");
      out.write("                        name=\"password\"\r\n");
      out.write("                        placeholder=\"Password\"\r\n");
      out.write("                        autocomplete=\"off\"\r\n");
      out.write("          required\r\n");
      out.write("          /><br />\r\n");
      out.write("                    <img class=\"eyeToggle\" src=\"https://svgshare.com/i/176H.svg\" draggable=\"false\" alt=\"Show Password\" onclick=\"togglePasswordVisibility('password')\">\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"signintext\">\r\n");
      out.write("                <p>Do not have an account yet?</p>\r\n");
      out.write("                <a href=\"");
      out.print(request.getContextPath());
      out.write("/signupform\">Sign Up</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"buttons\">\r\n");
      out.write("                <input type=\"submit\" value=\"Sign In\" />\r\n");
      out.write("            </div>\r\n");
      out.write("            <a href=\"");
      out.print(request.getContextPath());
      out.write("/\" class=\"returnhome\">Return Home</a>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"imagedisplay\">\r\n");
      out.write("            <img src=\"https://i.ibb.co/C0qZ4hh/signinimage.jpg\" alt=\"image\" draggable=\"false\"/>\r\n");
      out.write("          </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <script src=\"./js/singin.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("    function validateForm() {\r\n");
      out.write("        const email = document.getElementById(\"email\").value.trim();\r\n");
      out.write("        const password = document.getElementById(\"password\").value;\r\n");
      out.write("        \r\n");
      out.write("        // Regular expression for email validation\r\n");
      out.write("        const emailRegex = /^[^\\s@]+@[^\\s@]+\\.[^\\s@]+$/;\r\n");
      out.write("      \r\n");
      out.write("        if (!emailRegex.test(email)) {\r\n");
      out.write("          alert(\"Please enter a valid email address.\");\r\n");
      out.write("          return false;\r\n");
      out.write("        }\r\n");
      out.write("      \r\n");
      out.write("        if (password.length < 8) {\r\n");
      out.write("          alert(\"Password must be at least 8 characters long.\");\r\n");
      out.write("          return false;\r\n");
      out.write("        }\r\n");
      out.write("      \r\n");
      out.write("        return true;\r\n");
      out.write("      }\r\n");
      out.write("      \r\n");
      out.write("       \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    document.addEventListener(\"DOMContentLoaded\", function() {\r\n");
      out.write("        const eyeToggles = document.querySelectorAll(\".eyeToggle\");\r\n");
      out.write("\r\n");
      out.write("        eyeToggles.forEach(function(eyeToggle) {\r\n");
      out.write("            eyeToggle.addEventListener(\"click\", function() {\r\n");
      out.write("                const passwordField = this.parentElement.querySelector(\"input[type='password']\");\r\n");
      out.write("                \r\n");
      out.write("                if (this.src.includes(\"https://svgshare.com/i/176H.svg\")) {\r\n");
      out.write("                    this.src = \"https://svgshare.com/i/177M.svg\";\r\n");
      out.write("                    \r\n");
      out.write("                } else if (this.src.includes(\"https://svgshare.com/i/177M.svg\")) {\r\n");
      out.write("                    this.src = \"https://svgshare.com/i/176H.svg\";\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("        });\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("    function togglePasswordVisibility(inputId) {\r\n");
      out.write("        var passwordInput = document.getElementById(inputId);\r\n");
      out.write("        var eyeIcon = passwordInput.nextElementSibling;\r\n");
      out.write("\r\n");
      out.write("        if (passwordInput.type === \"password\") {\r\n");
      out.write("            passwordInput.type = \"text\";\r\n");
      out.write("            eyeIcon.src = \"https://svgshare.com/i/177M.svg\";\r\n");
      out.write("            eyeIcon.alt = \"Hide Password\";\r\n");
      out.write("        } else {\r\n");
      out.write("            passwordInput.type = \"password\";\r\n");
      out.write("            eyeIcon.src = \"https://svgshare.com/i/176H.svg\";\r\n");
      out.write("            eyeIcon.alt = \"Show Password\";\r\n");
      out.write("        }\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    </script>\r\n");
      out.write("    \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
