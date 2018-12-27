%?

Fs = 10000;         % ferekanse nemoone bardari
F1 = 2000;
F2 = 1000;
F3 = 4200;
Ts = 1/Fs;          % Sampling period
T1 = 1/F1;            % Sampling period
T2 = 1/F2;            % Sampling period
T3 = 1/F3;            % Sampling period
L = 150;            % Length of signal
t = (0:L)/Fs;       % Time vector
S1 = sin(2*pi*F1*t);
S2 = sin(2*pi*F2*t);
S3 = sin(2*pi*F3*t);
S = S1 + S2 + S3;


figure;
subplot( 2 , 1 , 1);
plot(t,S);
title('s(t)');
sAfterFilter = filter (LowPassFunction , S);
subplot( 2 , 1 , 2);
plot (t , sAfterFilter);
title('s(t) after filter');

figure;
Y = abs(fftshift(fft(S)));
yAfterFilter = abs(fftshift(fft(sAfterFilter)));
w = (-L/2:L/2)*Fs;
subplot( 2 , 1 , 1);
plot (w , Y); 
title('S(w)');
subplot (2 , 1 ,2);
plot (w , yAfterFilter); 
title('S(w) after filter');