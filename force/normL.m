function [l ] = normL( angle )
%NORML Summary of this function goes here
%   Detailed explanation goes here

    hip = angle(1);
    knee = angle(2);
    ankle = angle(3);

    % intergration constants
    C = [ 0.165,0.05,0.09,0.18,0.11,0.04,0.06,0.028,0.09]';
    % max velocity
    % shape factor
    % lopt
    lopt = [0146,0.11,0.121,0.173,0.086,0.086,0.054,0.033,0.099]';
    
    ma_H = zeros(1,4);
    ma_K = zeros(1,4);
    ma_A = zeros(1,3);
    ma = zeros(9,3);
    ma(1,1) = (1/3)*0.00233*hip^3 - (1/2)*0.00223*hip^2 - 0.0275*hip;
    ma(2,1) = (1/3)*-0.0098*hip^3 - (1/2)*0.0054*hip^2 + 0.0413*hip;
    ma(3,1) = (1/3)*-0.020*hip^3 - (1/2)*0.024*hip^2 + 0.055*hip;
    ma(5,1) = (1/3)*0.025*hip^3 + (1/2)*0.41*hip^2 - 0.040*hip;
    
    ma(3,2) = (1/3)*-0.0098*knee^3 + (1/2)*0.021*knee^2 + 0.028*knee;
    ma(4,2) = (1/3)*-0.008*knee^3 +  (1/2)*0.027*knee^2 + 0.014*knee;
    ma(5,2) = 0;%-0.058*exp(-2.0*knee.^2)*sin(knee) - 0.0284;
    ma(6,2) = 0;%-0.07*exp(-0.070*knee.^2)*sin(knee) - 0.0250;
    ma(7,2) = 0.018*knee;
    
    ma(7,3) = 0.053*ankle;
    ma(8,3) = 0.035*ankle;
    ma(9,3) = (1/2)*0.013*ankle^2 - 0.035*ankle;
    
    l = (sum(ma,2)+ C)./lopt;
    

    
    
   %%
    
   
   
    
    
end

