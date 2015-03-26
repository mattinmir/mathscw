%error analysis
clear all
R = 0.5;
L = 1.5e-3; %Inductor value
h = 0.0001;% Step size
i_0 = 0; %Initial current
t_f = 0.05; %Length of time for the programme to run for
T = 60e-3; %Time period

N=round((t_f)/h);

    
    N=round((t_f)/h);
    t = (0:h:(N*h));
   
  
    
    
    v_in = @(t) 5*sin(2*pi*(1/(300E-6)*t));
    v_out1 = huenRL(v_in, R, L, h, i_0, t_f);
    plot(t , v_out1);
    axis([0 0.003 -5 5])
    grid on;
    xlabel('Time (s)');
    ylabel('Voltage (v)');
    title('RL output voltage for a sinusoidal input');
    
%     v_in = @(t) 5*sin(2*pi*(300E-6)*t);
%     v_out1 = huenRL(v_in, R, L, h, i_0, t_f);
%     v_in = @(t) 5*sin(2*pi*(3E-3)*t);
%     v_out2 = huenRL(v_in, R, L, h, i_0, t_f);
%     v_in = @(t) 5*sin(2*pi*(60E-3)*t);
%     v_out3 = huenRL(v_in, R, L, h, i_0, t_f);
% %     v_in = @(t) 1*steps(t);
% %     v_out4 = huenRL(v_in, R, L, h, i_0, t_f);
% %     hold on
%     plot(t , v_out1, 'r-', t, v_out2, 'b-', t, v_out3, 'k-' );
%     grid on;
%     xlabel('Time (s)');
%     ylabel('Voltage (v)');
%     title('RL output voltage for different sinusoidal inputs with varying time periods');
%     legend('T = 300uS' ,'T = 60mS', 'T = 3mS');
%     
    
    a = (2*pi*(1/T)); 
    b = R/L;

  %  v_exact = (V0*sin(a*t))-((b*V0)*(b*sin(a*t)- a*cos(a*t)+a*exp(-b*t))*(1/(a^2 + b^2)));
  

    
