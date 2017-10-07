function [ M ] = activationMoments( a,angle )
%ACTIVATIONMOMENTS Summary of this function goes here
%   Detailed explanation goes here

    ma = momentArm(angle);
    
    M_H = a(1)*ma(1,1) + a(2)*ma(2,1) + a(2)*ma(3,1) + a(5)*ma(5,1);
    M_K = a(3)*ma(3,2) + a(4)*ma(4,2) + a(5)*ma(5,2) + a(6)*ma(6,2) + a(7)*ma(7,2);
    M_A = a(7)*ma(7,3) + a(8)*ma(8,3) + a(9)*ma(9,3);
    M = [M_H;M_K;M_A];
    

end

