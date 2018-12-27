[signal,fs] = wavread('Pulse.wav');
signalAfterFilter = filter(LowPassFunction2 , signal);
sound(signalAfterFilter);