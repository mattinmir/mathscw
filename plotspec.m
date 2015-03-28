function  plotspec(A, samplerate)
    % Divide by totsamples as fft misses this out
    mag = abs(A);%sqrt(A .* conj(A))/length(A); 
    phase = atan2(imag(A), real(A));
    % 1 datapoint for each sample taken, 
    % spacing between them is samplerate/totsamples
    faxis = [0:length(A)-1]*samplerate/length(A); 
    
    figure;
    subplot(2, 1,1);
    
    bar(faxis, mag);

    ylabel('Magnitude');
    xlabel('Frequency (Hz)');
    
    subplot(2,1,2);
    plot(faxis, unwrap(phase));
    axis([-0.1, 0.6 0 inf]);
    ylabel('Phase (rad)')
    xlabel('Frequency (Hz)');
end