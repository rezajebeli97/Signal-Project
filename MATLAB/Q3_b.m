Fs = 10000;         % ferekanse nemoone bardari
Fx = 200;
Ts = 1/Fs;          % Sampling period
Tx = 1/Fx;            % Sampling period
L = 150;            % Length of signal
t = (0:L)/Fs;       % Time vector
w = (-L/2:L/2);

x = 5 * sin(2*pi*Fx*t);

Fp = 2000;
p = 5 * sin(2*pi*Fp*t);

a = p .* x;

subplot(2 , 1 , 1);
plot(t , a);
title('a(t)');

A = abs(fftshift(fft(a)));
subplot(2 , 1 , 2);
plot (w , A);
title('A(w)');