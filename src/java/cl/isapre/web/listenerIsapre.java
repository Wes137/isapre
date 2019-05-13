/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.isapre.web;

import cl.isapre.modelo.afiliado;
import cl.isapre.modelo.bonos;
import cl.isapre.modelo.prestaciones;
import java.util.ArrayList;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Web application lifecycle listener.
 *
 * @author Seba
 */
@WebListener()
public class listenerIsapre implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ArrayList<afiliado> listaAf = new ArrayList<afiliado>();
        listaAf.add(new afiliado("1111","Roberto Andres", "Toro Sambrano","Toro Sambrano Roberto Andres", "Lago Llanquihue 123", 
                "10.001 megasalud", "2FAMUE4815", "45", "M", "123"));
        listaAf.add(new afiliado("2222","Claudia Ximena", "Heinz Arriagada","Heinz Arriagada Claudia Ximena", "Merino Benites 285", 
                "10.002 Clinica Universitaria", "3AAAUE2365", "40", "F", "123"));
        listaAf.add(new afiliado("3333", "Vanesa del Carmen","Muñoz Fuentes", "Muñoz Fuentes Vanesa del Carmen", "San Felipe 123", 
                "10.003 Clinica Puerto Montt", "4FGHSH2877", "30", "F", "123"));
        sce.getServletContext().setAttribute("listaAf",listaAf);
        
        ArrayList<prestaciones> listaPr = new ArrayList<prestaciones>();
        listaPr.add(new prestaciones(101814, "MEDICINA GENERALL ADULTO", 13930, 9751, 4179));
        listaPr.add(new prestaciones(101830, "PEDIATRIA NIÑOS", 12930, 7751, 5079));
        listaPr.add(new prestaciones(101970, "TRAUMATOLOGO ADULTO", 22930, 8751, 14079));
        sce.getServletContext().setAttribute("listaPr",listaPr);
        
        ArrayList<bonos> listaBo = new ArrayList<bonos>();
        listaBo.add(new bonos("1111", 101814, "MEDICINA GENERAL ADULTO", 13930, 9751, 4179));
        listaBo.add(new bonos("1111", 101830, "PEDIATRIA NIÑOS", 12830, 7751, 5079));
        listaBo.add(new bonos("2222", 101970, "TRAUMATOLOGO ADULTO", 22830, 8751, 14079));
        listaBo.add(new bonos("2222", 101814, "MEDICINA GENERAL ADULTO", 12930, 9751, 4179));
        listaBo.add(new bonos("2222", 101830, "PEDIATRIA NIÑOS", 12830, 7751, 5079));
        listaBo.add(new bonos("3333", 101814, "MEDICINA GENERAL ADULTO", 13930, 9751, 4179));
        sce.getServletContext().setAttribute("listaBo",listaBo);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
