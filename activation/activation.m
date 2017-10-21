function [ a_p ] = activation( muscle, d, f )
%ACTIVATION Summary of this function goes here
%   Calculates the activation of a muscle
    
    d_thr = muscle.d(2);%s
    d_sat = muscle.d(1);
    k_thr =  muscle.k(1);
    k_sat =  muscle.k(2);
    
    max_d = 999999999;
    alpha = 0.1;
    
    n1 = (-d_thr)*atan(k_thr*-d_thr) - (-d_sat)*atan(k_sat*-d_sat);
    n2 = (max_d-d_thr)*atan(k_thr*(max_d-d_thr)) - (max_d-d_sat)*atan(k_sat*(max_d-d_sat));

    c1 = 1/(n2-n1);
    c2 = -n1/(n2-n1);
 
    a_r = c1*( (d-d_thr)*atan(k_thr*(d-d_thr))...
          - (d-d_sat)*atan(k_sat*(d-d_sat))) + c2;
    temp = (alpha*f)^2;
    
    a_f = temp/(1+temp);
    a_p = a_f*a_r;
       
end

