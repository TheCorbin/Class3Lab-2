<%-- 
    Document   : calc1EntryView
    Created on : Sep 3, 2015, 3:52:21 PM
    Author     : ryancorbin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id="form1" name="form1" Method="POST" action="calc1">
            <h1> Calculate the Area of a Rectangle</h1>
                    
                    <p>Length:</p>
                    <input type="text" name="length" tabindex="1">
                    <p>Width:</p>
                    <input type="text" name="width" tabindex="2">
                    <input type="submit" name="submit" value="Calculate" tabindex="3"/>
            <br>
        </form>
    </body>
</html>
