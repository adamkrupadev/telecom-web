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

@WebServlet("/contratfixe")
     public class contratfixe extends HttpServlet {
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
	  String localisation=request.getParameter("localisation");
	  String numero=request.getParameter("numero"); 
          String matricule = request.getParameter("matricule");
	  response.setContentType("text/html");
          String message=null;
          
           try {
            validationTel( numero );    
        }   catch (Exception e) {
            erreurs.put( numero, e.getMessage() );

        }
           
             
            if ( !erreurs.isEmpty() ) {
           request.setAttribute( "erreurs", erreurs ); 
           message="vérifiez les champs";
           request.setAttribute("message", message);
           response.sendRedirect("fixe.jsp");
        } 
            
        else {
          
          
          try { 
              
         
          Class.forName("com.mysql.jdbc.Driver");
	  
	  //Connexion à la base de données
	  connection = (Connection) DriverManager.getConnection(connectionURL,"root", "");
          Statement st1 = (Statement) connection.createStatement();
          String sql=( " SELECT * from region r WHERE r.zone='"+localisation+"' ");
          ResultSet resultat = null;
          resultat=st1.executeQuery(sql);
          resultat.next();
          int n=resultat.getInt("nbDispo");  
         
          if(n==0){
          response.sendRedirect("Encombrement.jsp");
          }
          else{
          
          
          
          Statement st = (Statement) connection.createStatement();
          st.executeUpdate( "INSERT INTO fixe " + " VALUES('"+numero+"','"+matricule+"','"+localisation+"')");
          Statement st2 = (Statement) connection.createStatement();
          st2.executeUpdate( "INSERT INTO ligne " + " VALUES('"+numero+"','"+matricule+"')");
          response.sendRedirect("succes.jsp");
          n=n-1;
          Statement st3 = (Statement) connection.createStatement();
          st3.executeUpdate( "UPDATE region r set (r.nbDispo ='"+n+"') WHERE (r.zone='"+localisation+"')");
          
          HttpSession Session2 = request.getSession(true);		
      	  Session2.setAttribute("matricule", matricule );
          Session2.setAttribute("numero", numero);
         
          response.sendRedirect("succes.jsp");
          message="contrat enregistré";
          request.setAttribute("message", message);
          st.close ();
	  connection.close ();
          
          }
	  
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
          
          
