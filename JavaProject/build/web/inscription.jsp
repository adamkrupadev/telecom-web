<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" href="css-style.css">
     <link rel="stylesheet" href="navig-bar.css">
    </head>
     <title>Inscription</title>
     <body> 
         <ul>       
  <li><a href="login.jsp">login</a></li>
        </ul>
         <div class="container">  
  <form id="contact" action="Inscription" method="get">
    <h4>Agence de Telecommunication</h4>
     <fieldset>
      <input placeholder="Nom" type="text" id="nom" name="nom" required autofocus>
    </fieldset> 
    <fieldset>
      <input placeholder="Prénom" type="text" id="prenom" name="prenom" required autofocus>
    </fieldset> 
    <fieldset>
      <input placeholder="Login" type="text" id="login" name="login" required autofocus>
    </fieldset>
    <fieldset>
      <input placeholder="Mot de passe" type="password" id="password1" name="password1" required>
    </fieldset>
    <fieldset>
      <input placeholder="Confirmez votre mot de passe" type="password" id="password2" name="password2" required>
    </fieldset>
    <fieldset>
     <input type="radio" id="C" name="type" value="1"> Agent de contrats
     <input type="radio" id="F" name="type" value="2"> Agent de factorisation
    </fieldset>
    
    <fieldset>
      <button name="submit" type="submit" >Enregistrer</button>
    </fieldset>
    
  </form>
</div>
         

     </body>

</html>