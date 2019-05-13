<%-- 
    Document   : bonosComprados
    Created on : 10-05-2019, 13:05:47
    Author     : 18819816-3
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="cl.isapre.modelo.afiliado"%>
<%@page import="cl.isapre.modelo.bonos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/nav.css"/>
        <link rel="stylesheet" href="styles/table.css"/>
        <link rel="stylesheet" href="styles/comprar.css"/>
        <title>Bonos Comprados</title>
    </head>
    <body>
        <%
            HttpSession sesion=request.getSession();
            afiliado af=(afiliado) sesion.getAttribute("afiliado"); 
//            ArrayList<bonos> bonosC = sesion.getAttribute("bonosC");
           %>

    <nav>
        <ul>
            <li><a href="#" class="afiliado"> Bienvenido, <%=af.getNombres()%></a></li>
            <li><a href="menu.jsp"> Inicio </a></li>
            <li><a href="listaAfiliados.jsp"> Lista Afiliados </a></li>
            <li><a href="prestaciones.jsp"> Prestaciones </a></li>
            <li><a href="bonosComprados.jsp"> Bonos comprados </a></li>
            <li><a href="comprarBono.jsp"> Comprar bono </a></li>
            <li><a href="cerrarSesion.jsp"> Cerrar Sesión </a></li>
        </ul>
    </nav>
           <%
           %>
            <table border="1">
                <caption>Bonos comprados</caption>
                    <thead>
                        <th>Rut Prestador</th>
                        <th>Código</th>
                        <th>Descripción</th>
                        <th>Valor</th>
                        <th>Bonificación</th>
                        <th>Copago</th>
                    </thead> 
            <tr>
                <td>xd</td>
            </tr>
            </table>
                    <%}%>
</html>
