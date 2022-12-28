n_bits = 1000;                              % bits count
amplitude = 1;                              % voltage corresponding to '1' valued bit
variance = 0.25;                            % variance for the normal distributed noise
sigma = sqrt(variance);                     % sigma for the normal distributed noise
bits = generateBits(n_bits, amplitude);     % Transmitter

% Transmitted signal plot
figure(1);
subplot(4, 1, 1);
stem(bits);
title('Transmitted signal');
xlabel('signal');
ylabel('V');

noise = normrnd(0,sigma,[n_bits,1]);        % Gaussian noise (as gaussian distribution is a zero mean normal distribution)

% Noise plot
subplot(4, 1, 2);
stem(noise);
title('Gaussian noise');
xlabel('signal');
ylabel('V');

recieved = bits + noise;                    % Channel effect

% Recieved signal plot
subplot(4, 1, 3);
stem(recieved);
title('Recieved signal');
xlabel('signal');
ylabel('V');

% Filtering signal
filtered = recieved;
for i = 1 : 1 : n_bits
    if filtered(i, 1) > 0.5
        filtered(i, 1) = 1;
    else
        filtered(i, 1) = 0;
    end
end

% Filtered signal plot
subplot(4, 1, 4);
stem(filtered);
title('Filtered signal');
xlabel('signal');
ylabel('V');

% Error count
[E, R] = biterr(bits, filtered);
fprintf('BER = %f\n', R);

err = 0;
for i = 1 : 1 : n_bits
    if filtered(i, 1) ~= bits(i, 1)
        err = err + 1;
    end
end

BER = err / n_bits;