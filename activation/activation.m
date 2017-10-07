function [ a_p ] = activation( pulse_width,frequency, T_fat, k )
%ACTIVATION Summary of this function goes here
%   Calculates the activation of a muscle

    d_thr = 122*10^(-6);%s
    d_sat = 487.0*10^(-6);
    
    alpha = 0.1
    beta = 0.6;
    
    k_thr = k(1);
    k_sat = k(2);
    
    % the coef have to mee the condition in the paper a_r(0) =0 and
    % a_r(inf) = 1
    n1 = (-d_thr)*atan(k_thr*-d_thr) - (-d_sat)*atan(k_sat*-d_sat);
    d = 1000000;
    n2 = (d-d_thr)*atan(k_thr*(d-d_thr)) - (d-d_sat)*atan(k_sat*(d-d_sat));

    c1 = 1/(n2-n1)
    c2 = -n1/(n2-n1)
 
    a_r = c1*( (pulse_width-d_thr)*atan(k_thr*(pulse_width-d_thr))...
          - (pulse_width-d_sat)*atan(k_sat*(pulse_width-d_sat))) + c2;
    temp = (alpha*frequency)^2;
    
    a_f = temp/(1+temp);
    
    a_p = a_f*a_r;
   

end

