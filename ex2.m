clear all

q = 500E-9;
i = 0;
Vin = @fivevolt;

R = 250;
C = 3.5E-6;
L = 0.600;


h = 0.0001;
t = 0;
tf = 0.05;


Vout = LCR(Vin, q, i, t, L, C, R, h, tf);

t1 = (0:h:tf);

plot(t1, Vout, 'linewidth', 1.5);
xlabel('Time (s)');
ylabel('Voltage (V)');
