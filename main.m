n_bits = 10000;
amplitude = 1;
rng('default'); % For reproducibility
% X = directbinornd(1,0.3,n_bits,1);
% Xn = awgn(X, 0.3);
X = generateBits(n_bits, amplitude);
Xn = wgn(n_bits, 1, 1, 'linear');

% histogram(X,101);

err = 0;

for i = 1 : 1 : n_bits
    if Xn(i, 1) > 0.5
        Xn(i, 1) = 1;
    else
        Xn(i, 1) = 0;
    end
end

for i = 1 : 1 : n_bits
    if Xn(i, 1) ~= X(i, 1)
        err = err + 1;
    end
end

BER = err / n_bits;