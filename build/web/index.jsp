<%-- 
    Document   : index
    Created on : 06-05-2019, 15:01:24
    Author     : Seba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/index.css"/>
        <title>Isapre</title>
    </head>
    <body>
        <form method="post" action="validar.do">
            <fieldset>
                <legend>Login</legend>
                
                <label for="rut">Rut</label>
                <input type="text" name="rut">
                
                <label for="pass">Contraseña</label>
                <input type="password" name="pass">
                
                <div class="ingresar">
                <button type="submit">Ingresar</button>
                </div>
            </fieldset>
                
        </form>
        
    </body>
</html>
