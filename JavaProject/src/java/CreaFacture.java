import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.SQLException;
import java.sql.*;
import java.io.*;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/CreaFacture")
     public class CreaFacture extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletConfig config;
        
     
	 
	  public void init(ServletConfig config)
	  throws ServletException{
	 }
	  
	  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
	  
          
	  PrintWriter out = response.getWriter();
	  // "configuration" de la connexion à la base de donnée
	  String connectionURL = "jdbc:mysql://localhost/agencetelecom";
	  Connection connection=null;
          
          String numFact=request.getParameter("numFact");
	  String numLigne=request.getParameter("numLigne");
          String numUnite=request.getParameter("numUnite");
	  String prixTotal=request.getParameter("prixTotal");
          String annee=request.getParameter("annee");
                    String mois=request.getParameter("mois");

	  String delai=request.getParameter("delai");
          String numService=request.getParameter("numService");
          String payer= "0";
          
	  response.setContentType("text/html");
          
                     
                 try {  
                     
                   
           Class.forName("com.mysql.jdbc.Driver");
	  
	  //Connexion à la base de données
	  connection = (Connection) DriverManager.getConnection(connectionURL,"root", "");
          Statement st = (Statement) connection.createStatement();
          String sql = "INSERT INTO facture(idFacture,numLigne,numService,annee,mois,nbrUniteConsom,prixTotal,delais,payer) VALUES('"+numFact+"','"+numLigne+"','"+numService+"','"+annee+"','"+mois+"','"+numUnite+"','"+prixTotal+"','"+delai+"','"+payer+"')";
         
          st.executeUpdate(sql);
          
          HttpSession Session = request.getSession(true);		
      	  Session.setAttribute("numLigne", numLigne );
          
          st.close ();
	  connection.close ();
                    HttpSession Session2 = request.getSession(true);		
      	  Session2.setAttribute("numLigne", numLigne );
          Session2.setAttribute("numFact", numFact);
          response.sendRedirect("Fsuccess.jsp");
            

          
          }
          
          

          catch(Exception e){
	  System.out.println("Exception is ;"+e);
	  }
          }
}
	 