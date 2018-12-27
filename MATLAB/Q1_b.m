Fs = 10000;         % ferekanse nemoone bardari
F = 1000;
Ts = 1/Fs;          % Sampling period
T = 1/F;            % Sampling period
L = 150;            % Length of signal
t = (0:L)/Fs;       % Time vector
S = sin(2*pi*F*t);
subplot( 2 , 1 , 1);
plot(t,S);
title('x(t) = sin(2*pi*F*t) , F=1000');

Y = abs(fftshift(fft(S)));
w = (-L/2:L/2);
subplot(2 , 1 , 2);
plot(w,Y);
title('X(w)');