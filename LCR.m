function Vout = LCR(Vin, q, i, t, L, C, R, h, tf);

    N = round((tf-t)/h);
    Vout(1) = R*i;
    
    for j = 2:N+1
        igrad = @(t , xi, yi) 1/L*(-R*i - (1/C)*q + Vin(j*h));
        id = @(t, xi, yi) i;
        [q , i] = ruka_ (id, igrad, t, q, i, h);
        t = t + h;
        Vout(j) = R*i;
    end
end




    
