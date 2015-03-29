function Vout = gHeunRL(Vin, R, L, h, i0, tf )
    t=0;
    N=round((tf-t)/h);  % Number of steps is total time over step size
    i = i0;
    Vout(1,N) = zeros;
    Vout(1) = Vin(0);

    for j=1:N           
        ip = i + h*(Vin(t) - R*i)/L;   % Predictor: predicted next value of i = current value + (step * slope at current point)
        iGradAvg = 0.5*(Vin(t) - (R*i) + Vin(t+h) - (R*ip)) / L; % Average slope between the points]
        i = i + h*iGradAvg;         % Corrector: actual next value of i = current value + (step * average slope)
        Vout(j+1) = Vin(t+h) - (R*i); % Output voltage, as per given equation
        t = t + h;           % Next t value
    end 
end