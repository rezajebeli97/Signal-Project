Fs = 10000;         % ferekanse nemoone bardari
Fx = 200;
Ts = 1/Fs;          % Sampling period
Tx = 1/Fx;            % Sampling period
L = 150;            % Length of signal
t = (0:L)/Fs;       % Time vector
w = (-L/2:L/2);

x = 5 * sin(2*pi*Fx*t);
X = abs(fftshift(fft(x)));

Fp = 2000;
p = 5 * sin(2*pi*Fp*t);

a = p .* x;
A = abs(fftshift(fft(a)));

Fq = 2000;
q = 5 * sin(2*pi*Fq*t);
Q = abs(fftshift(fft(q)));

c = q .* a;
C = abs(fftshift(fft(c)));
subplot(3 , 1 , 1);
plot(w , C);
title('C(w)');
subplot(3 , 1 , 2);
plot(w , X);
title('X(w)');

c_refactored = filter(LowPassFunction , c);
C_refactored = abs(fftshift(fft(c_refactored)));
subplot(3 , 1 , 3);
plot(w , C_refactored);
title('refacored C(w)');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure;
subplot(3 , 1 , 1);
plot(t , c);
title('c(t)');

subplot(3 , 1 , 2);
plot(t , x);
title('x(t)');

subplot(3 , 1 , 3);
plot(t , c_refactored);
title('refacored c(t)');
