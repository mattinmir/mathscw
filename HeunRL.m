function Vout = HeunRL(Vin , R , L ,h, i0, tf)

    N = round(tf/h); % Number of steps is total time over step size
    i(1) = i0;

    for t =1:N
        iGrad = (Vin(t*h) - R*i(t)) / L; % Rearrange given eqn to get i' = (Vin-Ri)/L
        ip = i(t) + h*(iGrad); % Predictor: predicted next value of i = current value + (step * slope at current point)
        iGradNext = (Vin((t+1)*h) - R*ip) / L; % slope at next point is function from iGrad but with next point coordinates subbed in
        iGradAvg = (iGrad + iGradNext) / 2; % Average slope between the points
        Vout(t+1) = Vin(t*h) - R*i(t); % Output voltage, as given by given equation
        i(t+1) = i(t) + h*iGradAvg; % Corrector: actual next value of i = current value + (step * average slope)
    end
end

% plot(t, vout, 'b*');
% grid;
% xlabel('Time(s)');
% ylabel('Voltage (V)');









