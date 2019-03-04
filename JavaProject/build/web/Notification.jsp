<%-- 
    Document   : Notification
    Created on : Jan 22, 2018, 11:59:20 PM
    Author     : Attia
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
                    <li><a href="CreationFacture.jsp">Création d'une facture</a></li>
                    <li><a class="active" href="Notification.jsp">Envoyer une notification</a></li>
                    <li><a href="login.jsp">Log out</a></li>
        </ul>
        
        <h1> Gestion des factures </h1>
        <h2>Employé: ${prenom} ${nom}</h2>
       
      
        <div class="container">  
            <p><centre>Les factures</centre></p>
            
            
            
                    <div>
                        <table>
                        <thead>
                            <tr>
                                <td><center>Id Facture</center></td>
                                <td><center>Num ligne</center></td>
                                <td><center>Num service</center></td>
                                <td><center>Année</center></td>
                                <td><center>Mois</center></td>
                                <td><center>unité</center></td>
                                <td><center>prix toal</center></td>
                                <td><center>Delais</center></td>
                                <td><center>mail</center></td>

                                <td><center>Notifier</center></td>
                            </tr>
                             
                        </thead>
                            <%
                                try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/agencetelecom","root", "");
                                        String query = "select * from facture where payer=0";
                                    Statement stmt = conn.createStatement();
                                    ResultSet rs1 = stmt.executeQuery(query);
                                    String qrl = "select a.mail from abonne a JOIN ligne l JOIN facture f where f.payer=0 and f.numLigne=l.numLigne and l.matricule=a.matricule";

                                    Statement stm = conn.createStatement();
                                    ResultSet rs2 = stm.executeQuery(qrl);

                                    
                                    while (rs1.next()&&rs2.next()) {
                            %>
                            <tbody>
                            <tr>
                                <td><center><%=rs1.getString("IdFacture")%></center></td>
                                <td><center><%=rs1.getString("numLigne")%></center></td>
                                <td><center><%=rs1.getString("numService")%></center></td> 
                                <td><center><%=rs1.getString("annee")%></center></td>
                                <td><center><%=rs1.getString("mois")%></center></td>
                                <td><center><%=rs1.getString("nbrUniteConsom")%></center></td>
                                <td><center><%=rs1.getString("prixTotal")%></center></td>
                                <td><center><%=rs1.getString("delais")%></center></td>
                                <td><center><%=rs2.getString("mail")%></center></td>
                                <td><center><a href="mailto:<%=rs2.getString("mail")%>?
                                               &amp;subject=Alert%20de%20facture%20
                                            &amp;body=%0AId facture:<%=rs1.getString("IdFacture")%>%0A
                                            Num Ligne:<%=rs1.getString("numLigne")%>%0A
                                            Num Service:<%=rs1.getString("numService")%>%0A
                                            Année:<%=rs1.getString("annee")%>%0A
                                            Mois:<%=rs1.getString("mois")%>%0A
                                            nbrUniteConsom:<%=rs1.getString("nbrUniteConsom")%>%0A
                                            Prix total:<%=rs1.getString("prixTotal")%>%0A
                                            Delais:<%=rs1.getString("delais")%>%0A

                                            ">Notifier</a></center></td>
                            </tr>
                             

                            </tbody>
                            <% 
                                     
                                }
                            %>
                        </table>
                        </div>
                        <%
                            rs1.close();
                                stmt.close();
                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                         
                        <br/>
                </div>
       
         
        
    </body>
</html>
   