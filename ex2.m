clear all

q0 = 500E-9;
i0 = 0;
Vin = @sinewave;

C = 3.5E-6;
L = 0.600;
R = 12/sqrt(C/L);

h = 0.0001;
t = 0;
tf = 0.04;
tau = 3e-6;

zeta = (R/2)*(sqrt(C/L));


Vout1 = LCR(Vin, q0, i0, t, L, C, R, h, tf)/R;


t1 = (0:h:tf);

 plot(t1, Vout1,  'linewidth', 1.5);


xlabel('Time (s)');
ylabel('Current (A)');
title('RLC Circuit with 5V Sine Wave Input, f = 500Hz');
%legend('output', 'input');
