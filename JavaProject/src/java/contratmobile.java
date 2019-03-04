import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.SQLException;
import java.sql.*;
import java.io.*;
import java.util.HashMap;
import java.util.Map;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/contratmobile")
     public class contratmobile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletConfig config;
        
     
	 
	  public void init(ServletConfig config)
	  throws ServletException{
	
	 }
	  
	  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
	  Map<String, String> erreurs = new HashMap<String, String>();  
          PrintWriter out = response.getWriter();
	  // "configuration" de la connexion à la base de donnée
	  String connectionURL = "jdbc:mysql://localhost/agencetelecom";
	  Connection connection=null;
	 
	  //variables locales pour recupérer les infos de l'abonné
	 
	  String numero=request.getParameter("numero"); 
          String matricule =request.getParameter("matricule");
          String type=request.getParameter("type");
          String reseau=request.getParameter("reseau");
          String paiement=request.getParameter("paiement");
          String service=request.getParameter("service");
          String isp=request.getParameter("isp");
          
	  response.setContentType("text/html");
          String message=null;
          
          try {
            validationTel( numero );    
        }   catch (Exception e) {
            erreurs.put( numero, e.getMessage() );

        }
            if ( !erreurs.isEmpty() ) {
           request.setAttribute( "erreurs", erreurs );
           message="contrat enregistré";
           request.setAttribute("message", message);
           response.sendRedirect("mobile.jsp");
        } else {
          
          try {  

           Class.forName("com.mysql.jdbc.Driver");
	  
	  //Connexion à la base de données
	  connection = (Connection) DriverManager.getConnection(connectionURL,"root", "");
          Statement st = (Statement) connection.createStatement();
          st.executeUpdate( "INSERT INTO mobile " + " VALUES('"+numero+"','"+matricule+"','"+type+"','"+reseau+"','"+paiement+"','"+service+"')");
          Statement st2 = (Statement) connection.createStatement();
          st2.executeUpdate( "INSERT INTO ligne " + " VALUES('"+numero+"','"+matricule+"')");
	  
	  st.close ();
	  connection.close ();
          HttpSession Session2 = request.getSession(true);		
      	  Session2.setAttribute("matricule", matricule );
          Session2.setAttribute("numero", numero);
          message="contrat enregistré";
          request.setAttribute("message", message);
          response.sendRedirect("succes.jsp");

	  
	  }
          
          catch(Exception e){
	  System.out.println("Exception is ;"+e);
	  }
	 
            }
	   
	  }
          
          	  
    //validation du numero telephone saisi
     private void validationTel( String Tel ) throws Exception {
    if ( Tel.trim().length() != 8) {
        
    throw new Exception( "Merci de saisir un numero valide." );
        }
   
} 
	  
         
}