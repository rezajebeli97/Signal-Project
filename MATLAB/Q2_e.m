[signal,fs] = wavread('Pulse.wav');
signalAfterFilter = filter(HighPassFunction , signal);
spectrogram(signalAfterFilter);