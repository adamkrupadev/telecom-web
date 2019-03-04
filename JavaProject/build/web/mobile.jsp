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
  <li><a class="active" href="Contrat.jsp">Création d'un nouveau contrat > mobile</a></li>
  <li><a href="login.jsp">Log out</a></li>
</ul>
         
        <h5>Gestion des contrats</h5>
    <br>
    <h5>Employé: ${prenom} ${nom}</h5>
      
     
        <div class="container">
  <form id="contact" action="contratmobile" method="GET">
    <h4>Contrat d'un mobile</h4>
    <h4>N°Matricule: ${matricule}</h4>
   
    <fieldset>
     <input type="hidden"  name="matricule"  value="${matricule}">
    </fieldset>
    <fieldset>
        <input type="text" placeholder="numero" name="numero">
    </fieldset>
    <fieldset>
     Type:
    </fieldset>
    <fieldset>
     <input type="radio" id="3G" name="type" value="1"> 3G
     <input type="radio" id="4G" name="type" value="2"> 4G 
    </fieldset>
    <fieldset>
    Service:
    </fieldset>
    <fieldset>
    <input type="radio" id="ooredoo" name="reseau" value="1"> Ajeja 
    <input type="radio" id="tt" name="reseau" value="2"> Amigos
    <input type="radio" id="orange" name="reseau" value="3"> Internet mobile
    
    </fieldset>
    <fieldset>
     Paiement:
    </fieldset>
    <fieldset>
     <input type="radio" id="espece" name="paiement" value="post-payé"> Post-payé
      <input type="radio" id="cheque" name="paiement" value="pré-payé"> pré-payé
    </fieldset>
    <fieldset>
     Réseau:
    </fieldset>
    <fieldset>
     <input type="radio" id="cv" name="service" value="1"> Communication vocale
      <input type="radio" id="internet" name="service" value="2"> Internet
    </fieldset>
    <fieldset>
     ISP:
    </fieldset>
    <fieldset>
     <input type="radio" id="africasat" name="isp" value="1"> AfricaSat
      <input type="radio" id="idirectevolution" name="isp" value="2"> iDirect Evolution
      <input type="radio" id="vsat" name="isp" value="3"> VSAT Satellite Services
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
