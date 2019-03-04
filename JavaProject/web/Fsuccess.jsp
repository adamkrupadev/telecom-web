<%-- 
    Document   : Notification
    Created on : Jan 22, 2018, 11:59:20 PM
    Author     : Attia
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="css-style.css">
     <link rel="stylesheet" href="navig-bar.css">
    </head>
     <title>Success</title>
     <body>      
        <ul>       
                    <li><a href="#" >Agence de télécommunication</a><li>
                    <li><a href="Affiche_Facture.jsp">Factures</a></li>
                    <li><a href="CreationFacture.jsp">Création d'une facture</a></li>
                    <li><a href="Notification.jsp">Envoyer une notification</a></li>
                    <li><a href="login.jsp">Log out</a></li>
        </ul>
         <div class="container">  
  <form id="contact" action="login" method="get">
    
    <h4>La Facture est enregistré avec succés</h4>
    
    <fieldset>
        <a href="approbationn.jsp">
      <button name="text" type="button" >Approbation</button>
        </a>
    </fieldset>
    
  </form>
</div>
         

     </body>

</html>