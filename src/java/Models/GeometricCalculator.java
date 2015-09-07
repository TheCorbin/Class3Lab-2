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
    
    public int rectangleAreaCalc(int width, int height){
        return width * height;
    }
    
    public double circleAreaCalc(double radius){
        return Math.PI * (radius*radius);
    }
    
    public double triangleCalc(double side1, double side2){
        return (side1 * side2) /2;
    }
}
