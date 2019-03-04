package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class CreationFacture_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" href=\"css.css\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"navbar.css\">\n");
      out.write("        <title>Gestion des factures</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         \n");
      out.write("        <ul>       \n");
      out.write("  <li><a href=\"#\" >Agence de télécommunication</a><li>\n");
      out.write("  <li><a class=\"active\" href=\"CreationFacture.jsp\">Création d'une facture</a></li>\n");
      out.write("  <li><a href=\"Notification.jsp\">Envoyer une notification</a></li>\n");
      out.write("  <li><a href=\"login.jsp\">Log out</a></li>\n");
      out.write("</ul>\n");
      out.write("        \n");
      out.write("        <h1> Gestion des factures </h1>\n");
      out.write("        <h2>Employé: ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${prenom}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${nom}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h2>\n");
      out.write("       \n");
      out.write("      \n");
      out.write("        <div class=\"container\">  \n");
      out.write("  <form id=\"Facture\" action=\"CreaFacture\" method=\"get\">\n");
      out.write("    <h4>Creation d'une facture</h4>\n");
      out.write("    \n");
      out.write("    <fieldset>\n");
      out.write("      Numéro de facture:<input type=\"text\" id=\"numFact\" name=\"numFact\" required >\n");
      out.write("    </fieldset>\n");
      out.write("    <fieldset>\n");
      out.write("      Numéro de ligne:<input type=\"text\" id=\"numLigne\" name=\"numLigne\" required>\n");
      out.write("    </fieldset>\n");
      out.write("    <fieldset>\n");
      out.write("      Numéro de service:<input type=\"text\" id=\"numService\" name=\"numService\" required >\n");
      out.write("    </fieldset>\n");
      out.write("    <fieldset>\n");
      out.write("      Nombre d'unités consommés:<input type=\"text\" id=\"numUnite\" name=\"numUnite\" required >\n");
      out.write("    </fieldset>\n");
      out.write("    <fieldset>\n");
      out.write("      Prix Total:<input type=\"text\" id=\"prixTotal\" name=\"prixTotal\" required >\n");
      out.write("    </fieldset>\n");
      out.write("    <fieldset>\n");
      out.write("      Date:<input type=\"text\" id=\"date\" name=\"date\" required >\n");
      out.write("    </fieldset><fieldset>\n");
      out.write("      Délai:<input type=\"text\" id=\"delai\" name=\"delai\" required >\n");
      out.write("    </fieldset>\n");
      out.write("        <fieldset>\n");
      out.write("         <button name=\"submit\" type=\"submit\" >Submit</button>\n");
      out.write("      \n");
      out.write("    </fieldset>\n");
      out.write("    <fieldset>\n");
      out.write("        \n");
      out.write("       <a  href=\"EnvoyerMail.jsp\"> <div id=\"bouton\">\n");
      out.write("               <button type=\"button\">Envoyer par mail</button> </div>\n");
      out.write("                         </a>\n");
      out.write("    </fieldset>\n");
      out.write("    <fieldset>\n");
      out.write("        \n");
      out.write("      <a  href=\"imprimer.jsp\"> <div id=\"bouton\">\n");
      out.write("\t\t\t\t<button type=\"button\">imprimer</button> \n");
      out.write("                                </div>\n");
      out.write("                         </a>\n");
      out.write("        \n");
      out.write("    </fieldset>\n");
      out.write("   \n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("       \n");
      out.write("         \n");
      out.write("        \n");
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
