
% clear all
% close all
d_thr = 122;%s
d_sat = 486.0;
max_d = 999999999;
alpha = 0.1;
beta = 0.6;
k_thr = 0.02*10^(6);
k_sat = .00938*10^(6);
f_min = 0;
T_rec = 28.5;
T_fat = 2.9;
beta = 0.6;
n1 = (-d_thr)*atan(k_thr*-d_thr) - (-d_sat)*atan(k_sat*-d_sat);
n2 = (max_d-d_thr)*atan(k_thr*(max_d-d_thr)) - (max_d-d_sat)*atan(k_sat*(max_d-d_sat));

c1 = 1/(n2-n1);
c2 = -n1/(n2-n1);
time = linspace(0,40,100);
a = zeros(1,length(time));
count = 1;
fit = 1;
for t = time
    
    if (t>=0 && t<=10)  
        d = 32*t;
        f = 10;
    elseif (t>20 && t<=30)
        d = 32*(t-20)
        f = 10
    elseif (t>10 && t<=20)
        d = -32*t + 640;
        f = 100;
    elseif (t>30 && t<=40)
        d = -32*t + 1280;
        f= 100;
    end

 
  
    a_r = c1*( (d-d_thr)*atan(k_thr*(d-d_thr)) - (d-d_sat)*atan(k_sat*(d-d_sat))) + c2;
    temp = (alpha*f)^2;

    a_f = temp/(1+temp);
    a_p = a_f*a_r;

    lambda =1- beta + beta*(f/100)^2;

    c3 = (a_p*f_min*lambda)/T_fat + (1-a_p*lambda)/T_rec;
    
    c4 = (a_p*lambda-1)/T_rec - (a_p*lambda)/T_fat;
    c5 = c3/c4;
    fit = -c5+(1+c5)*exp(c4*t);
   
    a(count,1) = 100*a_p;
    a(count,2) = fit;
    count = count+1;
end
hold on 

%plot(time,a(:,1))
plot(time,a(:,2))
%legend([ 'activation without fatigue'; 'activation with fatigue']) 
%%
