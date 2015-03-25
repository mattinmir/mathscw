R = 0.5;
L = 0.0015;
h = 0.0045555;
i0 = 0;
tf= 1;

t = 1 : round(tf/h) +1;

Vout = HeunRL(@decay, R, L, h, i0, tf);
plot(t*h, Vout, 'linewidth', 2);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('RL Circuit with sinewave input, period = 30us')