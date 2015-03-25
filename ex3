clear all
h = 0.01;
tf = 50;
e = 0.1;
t = 0:h:tf;
x0 =0.001;
y0 = 0.001;
x = x0;
y = y0;
Vin = @steps;
func1 = @(t , x, y)(y);
func2 = @(t , x, y)(e*(1-(x*x))*y - x + Vin(t));
[x,y] = van_der_pol(func1, func2, t, x0, y0, h, tf);

plot(x, y);



    

