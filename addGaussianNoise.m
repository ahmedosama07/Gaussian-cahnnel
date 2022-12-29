function noise = addGaussianNoise(variance, N)
sigma = sqrt(variance);                     % sigma for the normal distributed noise
noise = normrnd(0,sigma,[N,1]);             % Gaussian noise (zero mean normal probability distribution)
end

