<%-- 
    Document   : prestaciones
    Created on : 09-05-2019, 19:07:41
    Author     : Seba
--%>

<%@page import="cl.isapre.modelo.afiliado"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.isapre.modelo.prestaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/nav.css"/>
        <link rel="stylesheet" href="styles/table.css"/>
        <title>Prestaciones</title>
    </head>
    <body>
    <%ArrayList<prestaciones> lista=(ArrayList<prestaciones>)getServletContext().getAttribute("listaPr");%>
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
    
    <table border="1">
            <caption>Prestaciones</caption>
            <thead>
                <th>Codigo</th>
                <th>Descripción</th>
                <th>Valor</th>
                <th>Bonificación</th>
                <th>Copago</th>
            </thead>
            <%
                for(int i =0; i<lista.size(); i++){
                
            %> 
            <tr>
                <td><%=lista.get(i).getCodigoPrestacion()%></td>
                <td><%=lista.get(i).getDescripcionPrestacion()%></td>
                <td><%=lista.get(i).getValor()%></td>
                <td><%=lista.get(i).getBonificacionFinanciar()%></td>
                <td><%=lista.get(i).getCopagoBeneficiario()%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
