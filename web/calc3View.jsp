<%-- 
    Document   : calc3View
    Created on : Sep 4, 2015, 10:20:35 AM
    Author     : ryancorbin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!--<button><c:redirect value="${location}"/></button>-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
    <body>
        <form id="form1" name="form1" Method="POST" action="calc3?type=rectangle&id=rectangle">
            <h1> Calculate the Area of a Rectangle</h1>
                    
                    <p>Length:</p>
                    <input type="text" name="length" tabindex="1">
                    <p>Width:</p>
                    <input type="text" name="width" tabindex="2">
                    <input type="submit" name="submit" value="Calculate" tabindex="3"/>
            <br>
        </form>
        
        </br>
       <c:out> The area of your rectangle is: ${rectangleMeasurement}</c:out>
        
        <form id="form1" name="form1" Method="POST" action="calc3?type=circle&id=circle">
            <BR><h1> Calculate the Area of a circle:</h1>
                    
                    <p>Length:</p>
                    <input type="text" name="radius" tabindex="4">
                    <input type="submit" name="submit" value="Calculate" tabindex="5"/>
            <br>
        </form>
       
       </br>
       </br>
       </br>
       </br>
        <c:out>The area of your circle is: ${circleMeasurement}</c:out>
        
        <form id="form1" name="form1" Method="POST" action="calc3?type=triangle&id=triangle">
            <BR><h1> Calculate the Area of a right triangle:</h1>
                    <p>Side1:</p>
                    <input type="text" name="side1" tabindex="6">
                    <p>Side2:</p>
                    <input type="text" name="side2" tabindex="7">
                    <input type="submit" name="submit" value="Calculate" tabindex="8"/>
            <br>
        </form>
        
        </br>
        <c:out>The area of your triangle is: ${triangleMeasurement}</c:out>
    </body>   
</html>
