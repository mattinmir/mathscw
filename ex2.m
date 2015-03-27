clear all

q0 = 500E-9;
i0 = 0;
Vin = @impulsive;


C = 3.5E-6;
L = 0.600;
R = 250;

h = 0.0001;
t = 0;
tf = 0.05;

zeta = (R/2)*(sqrt(C/L));


Vout1 = LCR(Vin, q0, i0, t, L, C, R, h, tf);


t1 = (0:h:tf);

plot(t1, Vout1,'linewidth' , 1.5);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('RLC Circuit with 5V Sinudoidal Input');
