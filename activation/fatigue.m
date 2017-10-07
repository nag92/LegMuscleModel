function [ dfit ] = fatigue( fit,a,T,f,fit_min )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    beta = 0.6;
    lambda = 1 - beta + beta*(f/100)^2;
    T_fat = T(1);
    T_rev = T(2);
    dfit = ((fit_min - fit)*a*lambda)/T_fat + ((1-fit)*(1-a*lambda))/T_rec;
    
    
end

