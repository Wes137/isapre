<%-- 
    Document   : comprarPrestaciones
    Created on : 12-05-2019, 22:36:21
    Author     : Seba
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="cl.isapre.modelo.bonos"%>
<%@page import="cl.isapre.modelo.afiliado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comprar prestaciones</title>
    </head>
    <body>
        <% 
            afiliado af=(afiliado) session.getAttribute("afiliado"); 
            ArrayList<bonos> lista=(ArrayList<bonos>)getServletContext().getAttribute("listaBo");
            HttpSession sesion=request.getSession();
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
                int Nbono = Integer.parseInt(request.getParameter("bono"));
                    
                ArrayList<bonos> b = new ArrayList<bonos>();
                String rut = lista.get(Nbono).getRutPrestador();
                int codigo = lista.get(Nbono).getCodigoPrestacion();
                String desc = lista.get(Nbono).getDescripcionPrestacion();
                int valor = lista.get(Nbono).getValor();
                int bonif = lista.get(Nbono).getBonificacionFinanciar();
                int copago = lista.get(Nbono).getCopagoBeneficiario();

                bonos bonosC=new bonos();
//                    creamos un elemento bono y lo rellenamos con los datos
                bonosC.setRutPrestador(rut);
                bonosC.setCodigoPrestacion(codigo);
                bonosC.setDescripcionPrestacion(desc);
                bonosC.setValor(valor);
                bonosC.setBonificacionFinanciar(bonif);
                bonosC.setCopagoBeneficiario(copago);
//                    lo agregamos al carro
                b.add(bonosC);
                sesion.setAttribute("bonosC",bonosC);
            %>
    </body>
</html>
