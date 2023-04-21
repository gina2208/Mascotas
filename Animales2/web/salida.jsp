<%-- 
    Document   : salidajsp
    Created on : 18/04/2023, 6:55:52 p. m.
    Author     : maria
--%>
<%@page import="modelo.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    ArrayList veterinaria = new ArrayList();
    veterinaria = (ArrayList) session.getAttribute("lista");
   
      double promedio = (Double)session.getAttribute("prom");
      int nPerros = (int)session.getAttribute("nPerros");
      int nGatos = (int)session.getAttribute("nGatos");
  
      
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="stylesF.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="reporte">   
            
        <h1>REPORTE</h1>
        <h3> Caninos </h3>
        <p> Hay = <%=nPerros%> Caninos</p>
        <h3> Felinos </h3>
        <p> Hay = <%=nGatos%> Felinos</p>
        <h3> Promedio de edad</h3>
        <p> El promedio aproximado de las edades de las mascotas es de <%=promedio%> años </p>
        <button onclick="window.location.href = 'index.jsp';">Menu principal</button>
       
        </div>
    </body>
</html>
