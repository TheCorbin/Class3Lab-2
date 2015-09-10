/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author ryancorbin
 */
public class GeometricCalculator {
    
    public double rectangleAreaCalc(String width, String height){
        double convertedWidth = Double.parseDouble(width);
        double convertedHeight = Double.parseDouble(height);
        return convertedWidth * convertedHeight;
    }
    
    public double circleAreaCalc(String radius){
        double convertedRadius = Double.parseDouble(radius);
        return Math.PI * (convertedRadius*convertedRadius);
    }
    
    public double triangleCalc(String side1, String side2){
        double convertedSide1 = Double.parseDouble(side1);
        double convertedSide2 = Double.parseDouble(side2);
        return (convertedSide1 * convertedSide2)/2;
    }
}
