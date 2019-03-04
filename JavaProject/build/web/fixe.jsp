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
  <li><a class="active" href="Contrat.jsp">Création d'un nouveau contrat > fixe</a></li>
  <li><a href="login.jsp">Log out</a></li>
</ul>
         
    <h5>Gestion des contrats </h5><br>
        <h5> Employé: ${prenom} ${nom}</h5>
      
     
        <div class="container">
  <form id="contact" action="contratfixe" method="GET">
    <h4>Contrat d'un fixe</h4>
     <h4>N°Matricule: ${matricule}</h4>
     
     <fieldset>Localisation:</fieldset>
    <fieldset>
      <input type="hidden"  name="matricule"  value="${matricule}">
      <SELECT name="localisation" size="1">
          <OPTION value="Sousse">Sousse</option>
          <OPTION value="Tunis">Tunis</option>
          <OPTION value="Monastir">Monastir</option>
          <OPTION value="Sfax">Sfax</option>
          <OPTION value="Beja">Beja</option>
          <OPTION value="Tozeur">Tozeur</option>
          <OPTION value="Djerba">Djerba</option>
      </SELECT>
    </fieldset>
    <fieldset>
      <input placeholder="numéro choisi" type="text" id="numero" name="numero" required>
    </fieldset>
      <fieldset>
          <div class="error"><%request.getAttribute("message");%></div>

      </fieldset>
   
    <fieldset>
         <button name="submit" type="submit" >Submit</button>
      
    </fieldset>
  </form>
        </div>

      
    </body>
</html>
