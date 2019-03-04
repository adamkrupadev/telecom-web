<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css-style.css">
     <link rel="stylesheet" href="navig-bar.css">
            <title>Gestion des Contrats</title>
    </head>
    <body>
<ul>
    <li><a href="#" >Agence de télécommunication</a><li>
  <li><a class="active" href="Contrat.jsp">Création d'un nouveau contrat</a></li>
  <li><a href="login.jsp">Log out</a></li>
</ul>
        <div> 
    <h5>Gestion des contrats </h5><br>
        <h5> Employé: ${prenom} ${nom}</h5></div> 
     
        <div class="container">
  <form id="contact" action="contrat" method="GET">
    <h4>Creation d'un contrat</h4>
    
    <fieldset>
      <input placeholder="Nom" type="text" id="nom" name="nom" required >
    </fieldset>
    <fieldset>
      <input placeholder="Prénom" type="text" id="prenom" name="prenom" required>
    </fieldset>
    <fieldset>
    <input placeholder="Matricule" type="text" id="matricule" name="matricule" required >
    </fieldset>
    <fieldset>
     <input placeholder="Adresse" type="text" id="adresse" name="adresse" required >
    </fieldset>
    <fieldset>
     <input placeholder="Mail" type="text" id="mail" name="mail" required >
      <span class="erreur">${erreurs["mail"]}</span>
                <br />

     </fieldset>
    <fieldset>
     <input type="radio" id="fixe" name="type" value="1"> Fixe 
      <input type="radio" id="mobile" name="type" value="2"> Mobile
    </fieldset>
    <fieldset>
         <button name="submit" type="submit" >Enregistrer</button>
      
    </fieldset>
    <fieldset>
    
        <button name="Annuler" type="reset" >Annuler</button>
    </fieldset>
  </form>
        </div>

      
    </body>
</html>
