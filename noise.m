function outSignal = noise(signal)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
outSignal = awgn(signal, 10);

%outSignal = 3*signal;
%n = signal * randn(size(signal));
%outSignal = signal + n;

end

