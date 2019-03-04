<%-- 
    Document   : Notification
    Created on : Jan 22, 2018, 9:59:20 PM
    Author     : Attia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css-style.css">
     <link rel="stylesheet" href="navig-bar.css">
        <title>Gestion des factures</title>
    </head>
    <body>
        <ul>       
                    <li><a href="#" >Agence de télécommunication</a><li>
                    <li><a href="Affiche_Facture.jsp">Factures</a></li>
                    <li><a class="active" href="CreationFacture.jsp">Création d'une facture</a></li>
                    <li><a href="Notification.jsp">Envoyer une notification</a></li>
                    <li><a href="login.jsp">Log out</a></li>
        </ul>
         
        <h5>Gestion des Factures </h5><br>
        <h5> Employé: ${prenom} ${nom}</h5>
      
     
        <div class="container">
  <form id="contact" method="GET">
    <h4>Approbation:</h4>
    <h2>N°Ligne: ${numLigne}</h2>
   
    <fieldset>
            <h2> Numéro Facture: ${numFact}</h2>
        <h2>Numéro affecté: ${numLigne}</h2>
  
    </fieldset>
    
    <fieldset> 
        <a href="EnvoyerMail.jsp">
          <button type="button" name="retour">Mail</button>
        </a>
    </fieldset>
  </form>
        </div>
    
    

      
    </body>
</html>
