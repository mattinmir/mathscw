clear all;
clc;
close all;
h = 0.01;
tf = 50;
e = 8.53;
t = 0:h:tf;
x0 =0.5;
y0 = 0.000;
x = x0;
y = y0;
f = 0.1;
A=1;
for A = 1
    Vin = @(t)  A*sin(2*pi*f*t);
    func1 = @(t , x, y)(y);
    func2 = @(t , x, y)(e*(1-(x*x))*y - x + Vin(t));
    [x,y] = van_der_pol(func1, func2, t, x0, y0, h, tf);

    figure;
    subplot(2,1,1);
    plot(t, x, 'linewidth', 1.5);
    title({['step size = ', num2str(h), '   epsilon = ', num2str(e),'   Vin = ', func2str(Vin), '   freq = ', num2str(f), '   Input Amplitude = ' , num2str(A)];'x(t)'} );
    xlabel('t');
    ylabel('x');
    
    subplot(2,1,2);
    plot(x, y, 'linewidth', 1.5);
    title('Phase Portrait');
    xlabel('x');
    ylabel('x''');
end
   
    

