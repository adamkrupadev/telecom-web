<%-- 
    Document   : Notification
    Created on : Jan 22, 2018, 12:59:20 PM
    Author     : Attia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css-style.css">
     <link rel="stylesheet" href="navig-bar.css">
        <title>Gestion des contrats</title>
    </head>
    <body>
<ul>
  <li><a href="#" >Agence de télécommunication</a><li>
  <li><a class="active" href="Contrat.jsp">Création d'un nouveau contrat</a></li>
  <li><a href="login.jsp">Log out</a></li>
</ul>
         
        <h5>Gestion des contrats </h5><br>
        <h5> Employé: ${prenom} ${nom}</h5>
      
     
        <div class="container">
  <form id="contact" method="GET">
    <h4>Approbation:</h4>
    <h2>N°Matricule: ${matricule}</h2>
   
    <fieldset>
      
        <h2>Numéro affecté: ${numero}</h2>
        <h2> Nom et Prénom de l'abonné: ${nomm} ${prenomm} </h2>
    </fieldset>
    
    <fieldset> 
        <a href="Contrat.jsp">
          <button type="button" name="retour">Retour</button>
        </a>
    </fieldset>
  </form>
        </div>
    
    

      
    </body>
</html>
