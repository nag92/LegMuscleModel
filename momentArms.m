function [ ma_H, ma_K, ma_A] = momentArms( angles )
%MOMENTS Summary of this function goes here
%   Detailed explanation goes here

    theta_H = angles(1);
    theta_K = angles(2);
    theta_A = angles(3);
    
    
    ma_H = zeros(1,4);
    ma_K = zeros(1,4);
    ma_A = zeros(1,3);
    
    ma_H(1) = 0.00233*theta_H.^2 - 0.00223*theta_H - 0.0275;
    ma_H(2) = -0.0098*theta_H.^2 - 0.0054*theta_H + 0.0413;
    ma_H(3) = -0.020*theta_H.^2 - 0.024*theta_H + 0.055;
    ma_H(4) = 0.025*theta_H.^2 + 0.41*theta_H - 0.040;
    
    
    ma_K(1) = -0.0098*theta_K.^2 + 0.021*theta_K + 0.028;
    ma_K(2) = -0.008*theta_K.^2 +  0.027*theta_K + 0.014;
    complex = erfi( (1-4*knee*i)/(2*sqrt(2)) + erfi( (1+4*knee*i)/ (2*sqrt(2)));
    complex = complex/( 4*sqrt(2)*exp(1/8))
    ma_K(3) = -0.058*complex - 0.0584*knee;
    ma_K(4) = -0.070*complex - 0.0250*knee;
    ma_K(5) = 0.018;
    
    ma_A = 0.053;
    ma_A = 0.035;
    ma_A = .013*theta_A - 0.035;
    
    


end

