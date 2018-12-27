Fs = 10000;         % ferekanse nemoone bardari
F = 200;
Ts = 1/Fs;          % Sampling period
T = 1/F;            % Sampling period
L = 150;            % Length of signal
t = (0:L)/Fs;       % Time vector
w = (-L/2:L/2);

x = 5 * sin(2*pi*F*t);
subplot(2 , 1 , 1);
plot(t,x);
title('x(t)');
X = abs(fftshift(fft(x)));
subplot(2 ,1, 2);
plot(w , X);
title('X(w)');