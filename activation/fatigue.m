function [ dfit ] = fatigue( fit,a,T,f,fit_min )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    beta = 0.6;
    dfit = zeros(1,9);
    for i = 1:9
        lambda = 1 - beta + beta*(f(ii)/100)^2;
        T_fat = T(ii,1);
        T_rev = T(ii,2);
        dfit(ii) = ((fit_min(ii) - fit(ii)*a(ii)*lambda)/T_fat + ...
                ((1-fit(ii))*(1-a(ii)*lambda(ii)))/T_rec;
    end
    
end

