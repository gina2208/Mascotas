<%-- 
    Document   : eliminar
    Created on : 21/04/2023, 9:18:22 a. m.
    Author     : maria
--%>
<%@page import="modelo.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    ArrayList veterinaria = new ArrayList();
    veterinaria = (ArrayList) session.getAttribute("lista");
    Iterator it = veterinaria.iterator();
                while (it.hasNext()) {
                    Mascota objeto = (Mascota) it.next();
                    String nombre=getNombre();
                    String raza=getRaza();
                    String color=getColor();
                    int edad=getEdad();
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>Su mascota <%=nombre%></p>
    </body>
</html>
