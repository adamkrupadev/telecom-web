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

@WebServlet("/contrat")
     public class contrat extends HttpServlet {
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
	  String nomm=request.getParameter("nom");
	  String prenomm=request.getParameter("prenom");
          String matricule= request.getParameter("matricule");
          String adresse= request.getParameter("adresse");
          String mail= request.getParameter("mail");
          String type = request.getParameter("type"); 
	  response.setContentType("text/html");
          Abonnee a = new Abonnee(nomm,prenomm,matricule,adresse,mail);
          
           try {
            validationEmail( mail );    
        }   catch (Exception e) {
            erreurs.put( mail, e.getMessage() );

        }
           
        if ( !erreurs.isEmpty() ) {
          
           request.setAttribute( "erreurs", erreurs ); 
           response.sendRedirect("Contrat.jsp");
        } else{
          
          try {  

           Class.forName("com.mysql.jdbc.Driver");
	  
	  //Connexion à la base de données
	  connection = (Connection) DriverManager.getConnection(connectionURL,"root", "");
         
          
            
           
              
          Statement st = (Statement) connection.createStatement();
          st.executeUpdate( "INSERT INTO abonne " + " VALUES('"+matricule+"','"+nomm+"','"+prenomm+"','"+adresse+"','"+mail+"')");
	  
          
          
          HttpSession Session2 = request.getSession(true);		
      	  Session2.setAttribute("matricule", matricule );
          Session2.setAttribute("nomm", nomm);
          Session2.setAttribute("prenomm", prenomm);
         
          
          if (type.equals("1")){
              
             
             response.sendRedirect("fixe.jsp");
          
          
          }
          
          else if (type.equals("2")){
            
              
             response.sendRedirect("mobile.jsp"); 
              
          }
          
	  
	
	  st.close ();
	  connection.close ();
          
          }
	  
	  
          
        
          
          catch(Exception e){
	  System.out.println("Exception is ;"+e);
	  }
          }
        
          }
           

 //validation de l'adresse mail saisie
     private void validationEmail( String mail ) throws Exception {
    if ( mail != null && mail.trim().length() != 0 ) {
        if ( !mail.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
            throw new Exception( "Merci de saisir une adresse mail valide." );
        }
    } else {
        throw new Exception( "Merci de saisir une adresse mail." );
    }
} 

          
          
}
	  
	    