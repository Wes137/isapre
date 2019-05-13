<%-- 
    Document   : listaAfiliados
    Created on : 09-05-2019, 0:10:48
    Author     : Seba
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="cl.isapre.modelo.afiliado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/nav.css"/>
        <link rel="stylesheet" href="styles/table.css"/>
        <title>Afiliados</title>
    </head>
    <body>
        <%ArrayList<afiliado> lista=(ArrayList<afiliado>)getServletContext().getAttribute("listaAf");%>
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
            <caption>Afiliados</caption>
            <thead>
                <th>Rut</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>beneficiario</th>
                <th>Dirección</th>
                <th>Convenio</th>
                <th>Plan</th>
                <th>Edad</th>
                <th>Genero</th>
                <th>Clave</th>
            </thead>
            <%
                for(int i =0; i<lista.size(); i++){
                
            %> 
            <tr>
                <td><%=lista.get(i).getRut()%></td>
                <td><%=lista.get(i).getNombres()%></td>
                <td><%=lista.get(i).getApellidos()%></td>
                <td><%=lista.get(i).getBeneficiario()%></td>
                <td><%=lista.get(i).getDireccion()%></td>
                <td><%=lista.get(i).getConvenio()%></td>
                <td><%=lista.get(i).getPlan()%></td>
                <td><%=lista.get(i).getEdad()%></td>
                <td><%=lista.get(i).getGenero()%></td>
                <td><%=lista.get(i).getClave()%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
