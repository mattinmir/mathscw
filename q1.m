clear all
R=0.5;  %Parameters
L=1.5e-3;
h=0.0002;
i0=0;
tf=0.1;

  N=round((tf)/h);
 t = (0:h:(N*h));

Vout = HeunRL(@sinewave, R, L, h, i0, tf);
V0 = 5;
a = (2*pi*(1/60e-3)); 
b = R/L;
%v_exact = (@sinewave*sin(a*t))-((b*@sinewave)*(b*sin(a*t)- a*cos(a*t)+a*exp(-b*t))*(1/(a^2 + b^2)));
v_exact = (V0*sin(a*t))-((b*V0)*(b*sin(a*t)- a*cos(a*t)+a*exp(-b*t))*(1/(a^2 + b^2)));
error = ((v_exact - Vout)/v_exact)*100;
plot(t, Vout, '-r*', t, v_exact, 'b');

legend('Heun Approximation', 'Exact Value');
xlabel('Time (s)');
ylabel('Voltage (V)');
title('RL Circuit with sinewave input, period = 60ms')