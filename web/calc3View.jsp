<%-- 
    Document   : calc3View
    Created on : Sep 4, 2015, 10:20:35 AM
    Author     : ryancorbin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    </head>
    
    
    <body>
        <form id="form1" name="form1" Method="POST" action="calc3?type=rectangle">
            <h1> Calculate the Area of a rectangle:</h1>
                    
                    <p>Length:</p>
                    <input type="text" name="length" tabindex="1">
                    <p>Width:</p>
                    <input type="text" name="width" tabindex="2">
                    <input type="submit" name="submit" value="Calculate" tabindex="3"/>
                    <c:set var="recLength" scope="page" value="#{length}"/>
            <br>
        </form>
       
        <c:if test="${!empty length}">
            <p> The area of your rectangle is: ${rectangleMeasurement}</p>          
        </c:if>
            
        <c:set var="rectanglemeasure" value="${rectangleMeasurement}"/>
        
        <c:if test="${fn:contains(rectanglemeasure, '6')}">
            <p>There's a 6 in that rectangle!<p>
        </c:if>
            
            
        <form id="form2" name="form2" Method="POST" action="calc3?type=circle">
            <BR><h1> Calculate the Area of a circle:</h1>
                    
                    <p>Length:</p>
                    <input type="text" name="radius" tabindex="4">
                    <input type="submit" name="submit" value="Calculate" tabindex="5"/>
            <br>
        </form>
       
            <p>The area of your circle is: <fmt:formatNumber value="${circleMeasurement}" maxFractionDigits="4"></fmt:formatNumber></p>
        
        <form id="form3" name="form3" Method="POST" action="calc3?type=triangle">
            <BR><h1> Calculate the Area of a right triangle:</h1>
                    <p>Side1:</p>
                    <input type="text" name="side1" tabindex="6">
                    <p>Side2:</p>
                    <input type="text" name="side2" tabindex="7">
                    <input type="submit" name="submit" value="Calculate" tabindex="8"/>
            <br>
        </form>
        
        <p>The area of your triangle is: ${triangleMeasurement}</p>
        
        <p>${fn:length(measurements)} measurements performed so far!<p>
        
        <c:forEach var="item" items="${measurements}">
            <tr>
                <td align="right" bgcolor="#ffffff">
                ${item}
                <br>
                </td>
            </tr>    
        </c:forEach>
        
       
            
        
    </body>   
</html>
