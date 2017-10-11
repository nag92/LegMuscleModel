function [ fit ] = fatigue( muscle, t )
%UNTITLED Summary of this function goes here

    beta = 0.6;

    fit_min = muscle.fatigue(1);    
    T_fat = muscle.fatigue(2);
    T_rec = muscle.fatigue(3);

    lambda =1 - beta + beta*(f/100)^2;
    c3 = (a*fit_min*lambda)/T_fat + (1-a*lambda)/T_rec;
    c4 = (a*lambda-1)/T_rec - (a*lambda)/T_fat;
    c5 = c3/c4;
    
    fit = -c5+(1+c5)*exp(c4*t);

end

