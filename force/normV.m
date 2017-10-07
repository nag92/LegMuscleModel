function [ v_norm ] = normV( angle, omega )
%NORMV Summary of this function goes here
%   Detailed explanation goes here
    
   
    v = zeros(9,1);
    
    vm = [0.73,0.54,0.48,0.69,0.51,0.48,0.32,0.1,0.36]';
    
    ma = momentArm(angle);
    
       
    for ii = 1:9
        ma(ii,:)
        v(ii) = sum(ma(ii,:).*omega);
    end
    
    v_norm = v./vm;
    

end

