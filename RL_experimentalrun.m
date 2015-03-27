%error analysis
clear all
R = 0.5;
L = 1.5e-3; %Inductor value
h = 0.0001;% Step size
i0 = 0; %Initial current
tf = 0.1; %Length of time for the programme to run for
T = 60e-3; %Time period
a = (2*pi*(1/T)); 
b = R/L;
V0 = 5;


N=round((tf)/h);
t = (0:h:(N*h));

a = (2*pi*(1/T)); 
b = R/L;
    
   h_0 = 1E-7;
   for i = 1:50000
    
    N=round((tf)/h);
    t = (0:h:(N*h));
    v_in = @(t) 5*sin(2*pi*(1/T)*t);
    v_out = HeunRL(v_in, R, L, h, i0, tf);
    v_exact = (V0*sin(a*t))-((b*V0)*(b*sin(a*t)- a*cos(a*t)+a*exp(-b*t))*(1/(a^2 + b^2)));
    
    error(i) = v_exact(2) - v_out(2);
    h = h+h_0;
end

h = h_0 : h_0 : 50000*h_0;

plot(log10(h), log10(error), 'b*');
grid on
title('Local Truncation error for Heun''s method')
xlabel('log(h)')
ylabel('log(e)')
        
    


    
