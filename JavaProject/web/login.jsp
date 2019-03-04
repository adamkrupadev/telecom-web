<%-- 
    Document   : Notification
    Created on : Jan 17, 2018, 11:59:20 PM
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
     <title>Authentification</title>
     <body>
        <ul>       
  <li><a href="inscription.jsp">s'inscrire</a></li>
        </ul>
         <div class="container">  
  <form id="contact" action="login" method="get">
    <h4>Agence de Télécommunication</h4>
    
    <fieldset>
      <input placeholder="Login" type="text" id="login" name="login" required autofocus>
    </fieldset>
    <fieldset>
      <input placeholder="Mot de passe" type="password" id="password" name="password" required>
    </fieldset>
    
    <fieldset>
      <button name="submit" type="submit" >Submit</button>
    </fieldset>
    
  </form>
</div>
         

     </body>

</html>