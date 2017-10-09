function [ a_p ] = activation( pulse_width,frequency, k )
%ACTIVATION Summary of this function goes here
%   Calculates the activation of a muscle
    
    d_thr = 122*10^(-6);%s
    d_sat = 487.0*10^(-6);
    max_d = 999999999;
    alpha = 0.1
    beta = 0.6;
    a_p = zeros(1,9);

   for ii = 1:9
    
    max_d = pulse_width(ii);
    f = frequency(ii);
    k_thr = k(ii,1);
    k_sat = k(ii,2);
    
    % the coef have to mee the condition in the paper a_r(0) =0 and
    % a_r(inf) = 1
    n1 = (-d_thr)*atan(k_thr*-d_thr) - (-d_sat)*atan(k_sat*-d_sat);
    n2 = (max_d-d_thr)*atan(k_thr*(max_d-d_thr)) - (max_d-d_sat)*atan(k_sat*(max_d-d_sat));

    c1 = 1/(n2-n1);
    c2 = -n1/(n2-n1);
 
    a_r = c1*( (d-d_thr)*atan(k_thr*(d-d_thr))...
          - (d-d_sat)*atan(k_sat*(d-d_sat))) + c2;
    temp = (alpha*f)^2;
    
    a_f = temp/(1+temp);
    
    a_p(i) = a_f*a_r;
      
       
   end
    

end

