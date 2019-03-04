import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.SQLException;
import java.sql.*;
import java.io.*;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/Inscription")
     public class Inscription extends HttpServlet {
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
	  String password1=request.getParameter("password1");
          String password2=request.getParameter("password2");
          String prenom= request.getParameter("prenom");
          String nom= request.getParameter("nom");
          String type=request.getParameter("type");
	  response.setContentType("text/html");
          
                     
          try {  

           Class.forName("com.mysql.jdbc.Driver");
	  
	  //Connexion à la base de données
	  connection = (Connection) DriverManager.getConnection(connectionURL,"root", "");
          Statement st = (Statement) connection.createStatement();
	  
	 String sql = "SELECT * FROM employe e WHERE (e.pseudo = '"+login+"' ) ";
         ResultSet resultat = null;
         resultat=st.executeQuery(sql);
          
            
        if (resultat.next())
            { response.sendRedirect("incription.jsp");}

        else if (!password1.equals(password2)) { response.sendRedirect("incription.jsp");}


        else
        { 
//traitement
        st.executeUpdate("INSERT INTO employe " + " VALUES('"+nom+"','"+prenom+"','"+login+"','"+password1+"','"+type+"')");
        response.sendRedirect("login.jsp");
        }
          
	  st.close ();
	  connection.close ();
	  
	  }
          
          catch(Exception e){
	  System.out.println("Exception is ;"+e);
	  }
	 
       
	   
	  }
	  
	  }
	    