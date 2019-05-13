<%-- 
    Document   : comprarBono
    Created on : 10-05-2019, 13:07:42
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
        <title>Afiliados</title>
    </head>
    <body>
        <%ArrayList<bonos> lista=(ArrayList<bonos>)getServletContext().getAttribute("listaBo");%>
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
            <form method="post" action="comprarPrestaciones.jsp">
            <table border="1">
            <caption>Bonos</caption>
            <thead>
                <th class="Elegir">Elegir</th>
                <th>Rut Prestador</th>
                <th>Código</th>
                <th>Descripción</th>
                <th>Valor</th>
                <th>Bonificación</th>
                <th>Copago</th>
            </thead>
            <%
                for(int i =0; i<lista.size(); i++){
            %> 
            <tr>
                <td><input type="radio" name="bono" value="<%=i%>" required></td>
                <td><%=lista.get(i).getRutPrestador()%></td>
                <td><%=lista.get(i).getCodigoPrestacion()%></td>
                <td><%=lista.get(i).getDescripcionPrestacion()%></td>
                <td><%=lista.get(i).getValor()%></td>
                <td><%=lista.get(i).getBonificacionFinanciar()%></td>
                <td><%=lista.get(i).getCopagoBeneficiario()%></td>
            </tr>
            <%
                }
            %>
            </table>
            <input type="submit" value="Comprar" class="comprar">
            </form>
</html>
