<%-- 
    Document   : menu
    Created on : 06-05-2019, 17:49:03
    Author     : Seba
--%>
<%@page import="cl.isapre.modelo.afiliado"%>
<%@page import="cl.isapre.modelo.bonos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <link rel="stylesheet" href="styles/nav.css"/>
        <link rel="stylesheet" href="styles/table.css"/>
    </head>
        <% afiliado af=(afiliado) session.getAttribute("afiliado"); %>  
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
    <table>
        <caption>Afiliado</caption>
        <tr>
            <td><b>Rut</b></td>
            <td><%=af.getRut()%></td>
        </tr>
        <tr>
            <td><b>Nombre</b></td>
            <td><%=af.getNombres()%></td>
        </tr>
        <tr>
            <td><b>Apellido</b></td>
            <td><%=af.getApellidos()%></td>
        </tr>
    </table>
    
</html>
