
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.SQLException;
import java.sql.*;
import java.io.*;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/login")
     public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletConfig config;
        
     
	 
	  public void init(ServletConfig config)
	  throws ServletException{
	// this.config=config;
	 }
	  
	  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
	  
          
	  PrintWriter out = response.getWriter();
	  // "configuration" de la connexion à la base de donnée
	  String connectionURL = "jdbc:mysql://localhost/agencetelecom";
	  Connection connection=null;
	 
	  //variable locale pour le username et le password
	  String login=request.getParameter("login");
	  String password=request.getParameter("password");
          String prenom= new String("");
          String nom= new String("");
	  response.setContentType("text/html");
          
                     
          try {  

           Class.forName("com.mysql.jdbc.Driver");
	  
	  //Connexion à la base de données
	  connection = (Connection) DriverManager.getConnection(connectionURL,"root", "");
          Statement st = (Statement) connection.createStatement();
	  
	  // on récupére username et password de la BDD
	  String sql =  "SELECT * FROM employe e WHERE ((e.pseudo = '"+login+"' ) AND (e.mp = '"+password+"')) ";
	  ResultSet resultat = null;
          resultat=st.executeQuery(sql);
          
          
          
            
      if (!resultat.next())
      { response.sendRedirect("login.jsp");}
      else { prenom=resultat.getString("prenom"); nom=resultat.getString("nom");
            HttpSession maSession = request.getSession(true);		
      	    maSession.setAttribute("pseudo", login );
            maSession.setAttribute("prenom", prenom );
            maSession.setAttribute("nom", nom );}


        if(resultat.getString("type").equals("C")) { 
            
            response.sendRedirect("Contrat.jsp");
        }
            
            
        
        else  if(resultat.getString("type").equals("F")) { 
             
	    
            response.sendRedirect("Facture.jsp");
        }  
        
            
        
          
	  st.close ();
	  connection.close ();
	  
	  }
          
          catch(Exception e){
	  System.out.println("Exception is ;"+e);
	  }
	 
       
	   
	  }
	  
	  }
	    