function [ dfit ] = dfdt( t,fit,a,f )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    
    a = 1;%sin(2*pi*t)
    f = 99;
    fit_min = 0;
    T_rec = 30;
    T_fat = 18;
    beta = 0.6;
    lambda = 1 - beta + beta*(f/100)^2;

    dfit = (((fit_min - fit)*a*lambda)/T_fat) + (((1-fit)*(1-a*lambda))/T_rec);

end

