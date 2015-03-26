function V_out = HeunRL2(V_in,R,L,h,i_0,t_f)

y=i_0; % Initial inductor current
N=round((t_f)/h); % number of steps within interval
V_out(1:N)=0;
t=0;

for j=1:N %Loop through interval
    
    yp=y+h*((1/L)*V_in(t)-((R/L)*(y))); % predictor for y
    y_avg=0.5*(((1/L)*V_in(t)-((R/L)*(y))+((1/L)*V_in(t))-((R/L)*(yp)))); % Computes average gradient between current and next point
    y=y+h*y_avg; % Next y point, calculated using the average
    t=t+h; % Increment step
    V_out(j)=V_in(t)-(R*y);
end