function [ dfit ] = fatigue( fit,a,f )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    beta = 0.6;
    dfit = zeros(1,9);
    T_rec = 30;
    T_fat = [ 18; 18; 25; 25; 18; 18; 18; 40; 33];
    fit_min = [ 0; 0; 0.2; 0.2; 0; 0; 0; 0.5; 0.3];

    for i = 1:9
        lambda = 1 - beta + beta*(f(ii)/100)^2;
                
        dfit(ii) = ((fit_min(ii) - fit(ii)*a(ii)*lambda)/T_fat(ii) + ...
                ((1-fit(ii))*(1-a(ii)*lambda(ii)))/T_rec);
    end
    
end

