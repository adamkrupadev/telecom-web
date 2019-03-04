<%-- 
    Document   : Facture
    Created on : 18 janv. 2018, 17:48:16
    Author     : Attia
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
        
        <h1> Gestion des factures </h1>
        <h2>Employé: ${prenom} ${nom}</h2>
       
      
        <div class="container">  
  <form id="contact" action="CreaFacture" method="get">
    <h4>Creation d'une facture</h4>
    
    <fieldset>
      Numéro de facture:<input type="text" id="numFact" name="numFact" required >
    </fieldset>
    <fieldset>
      Numéro de ligne:<input type="text" id="numLigne" name="numLigne" required>
    </fieldset>
    <fieldset>
      Numéro de service:<input type="text" id="numService" name="numService" required >
    </fieldset>
    <fieldset>
      Nombre d'unités consommés:<input type="text" id="numUnite" name="numUnite" required >
    </fieldset>
    <fieldset>
      Prix Total:<input type="text" id="prixTotal" name="prixTotal" required >
    </fieldset>
    <fieldset>
      Année:<input type="text" id="annee" name="annee" required >
    </fieldset>
        <fieldset>
      Mois:<input type="text" id="mois" name="mois" required >
        </fieldset><fieldset>
      Délai:<input type="text" id="delai" name="delai" required >
    </fieldset>
        <fieldset>
         <button type="submit" >Enregistrer</button>
      
    </fieldset>

      
    </fieldset>
        <fieldset>
    
          <button name="Annuler" type="reset" >Annuler</button>
    </fieldset>
   
  </form>
</div>

         
        
    </body>
</html>
