function [ M ] = elasticMoments( angles )
%ELASTICMOMENTS Summary of this function goes here
%   Detailed explanation goes here
    hip = angles(1);
    knee = angles(2);
    ankle = angles(3);
    M_H = exp(2.180 - 0.0160*ankle - 0.0195*hip) - exp(-2.1784 + 0.070*knee + 0.1349*hip) - 15.24;
    M_K = exp(1.0372 + 0.0040*ankle - 0.0494*knee - 0.0250*hip)-...
          exp(-1.1561 - 0.0020*knee + 0.0030*hip)+...
          exp(2.5-0.25*knee) + 1.0;
    M_A = exp(2.0111 - 0.0833*ankle - 0.0090)-...
          exp(-9.9250+0.2132*ankle) - 2.970;
    
      
    M = [ M_H;M_K;M_A];
end

