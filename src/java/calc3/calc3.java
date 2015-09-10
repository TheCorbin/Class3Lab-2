/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calc3;

import Models.GeometricCalculator;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ryancorbin
 */
@WebServlet(name = "calc3", urlPatterns = {"/calc3"})
public class calc3 extends HttpServlet {
    
    private static final String resultPage = "/calc3View.jsp";
    private final ArrayList<String> measurements = new ArrayList<>();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        GeometricCalculator calculator = new GeometricCalculator();
        
        String calcType = request.getParameter("type"); 
//        String location = "#" + request.getParameter("id");
//        request.setAttribute("location", resultPage + location);
        request.setAttribute("currentURL", resultPage);
        Double measurement = 0.0;
        
        
        switch (calcType){
            case "rectangle":
                String width = request.getParameter("width");
                String length = request.getParameter("length");
                measurement = calculator.rectangleAreaCalc(width, length);
                request.setAttribute("rectangleMeasurement", measurement);
                measurements.add("A rectangle with sides " + width + " and " + length + " has an area of " + measurement);
                break;
            case "circle":
                String radius = request.getParameter("radius");
                measurement = calculator.circleAreaCalc(radius);
                request.setAttribute("circleMeasurement", measurement);
                measurements.add("A circle with a radius " + radius + " has an area of " + measurement);
                break;
            case "triangle":
                String side1 = request.getParameter("side1");
                String side2 = request.getParameter("side2");
                measurement = calculator.triangleCalc(side1, side2);
                request.setAttribute("triangleMeasurement", measurement);
                measurements.add("A triangle with sides " + side1 + " and " + side2 + " has an area of " + measurement);
                break;
        }
        
        request.setAttribute("measurements", measurements);
        
        RequestDispatcher view = request.getRequestDispatcher(resultPage);
        view.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
