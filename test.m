 d_thr = 122*10^(-6);%s
d_sat = 487.0*10^(-6);

k_thr = 1;
k_sat = 1;

 syms d 
f = (d-d_thr)*atan(k_thr*(d-d_thr)) - (d-d_sat)*atan(k_sat*(d-d_sat));
n1 = (-d_thr)*atan(k_thr*-d_thr) - (-d_sat)*atan(k_sat*-d_sat);
n2 = double(limit(f,d,inf));

 c1 = 1/(n2-n1)
 c2 = 1/(n2-n1)
 

n1 = (-d_thr)*atan(k_thr*-d_thr) - (-d_sat)*atan(k_sat*-d_sat);
d = 1000000;
n2 = (d-d_thr)*atan(k_thr*(d-d_thr)) - (d-d_sat)*atan(k_sat*(d-d_sat));

 c1 = 1/(n2-n1)
 c2 = -n1/(n2-n1)
 

 d = 100000
 c1*((d-d_thr)*atan(k_thr*(d-d_thr)) - (d-d_sat)*atan(k_sat*(d-d_sat))) + c2
 
 
 %%
 
 
 
 syms x
 
eval(int( -0.058*exp(-2.0*x.^2)*sin(x) - 0.0284,x))
 
 
 
 