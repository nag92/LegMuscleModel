
% clear all
% close all
d_thr = 122;%s
d_sat = 486.0;
max_d = 999999999;
alpha = 0.1;
beta = 0.6;
k_thr = 0.02*10^(6);
k_sat = .00938*10^(6);
fit_min = 0;
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

d = [ d_thr; d_sat];
k = [ k_thr; k_sat];
fatigue_param = [fit_min;T_fat;T_rec];
dampening = [0;0;0];

muscle = muscle_object(d,k,fatigue_param,dampening);


for t = time
    
    if (t>=0 && t<=10)  
        d = 32*t;
      
    elseif (t>20 && t<=30)
        d = 32*(t-20)
 
    elseif (t>10 && t<=20)
        d = -32*t + 640;
     
    elseif (t>30 && t<=40)
        d = -32*t + 1280;
   
    end

    f = 20;
    a_p = activation(muscle,d,f);
    fit = fatigue(muscle,a_p,f,t);
   
    a(count,1) = 100*a_p;
    a(count,2) = 100*fit;
    count = count+1;
end
hold on 

plot(time,a(:,1))
plot(time,a(:,2))
legend( 'activation ', 'fit') 
xlabel('time')
ylabel('activation %')
%%
