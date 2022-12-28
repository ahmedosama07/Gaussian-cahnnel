function signal = generateBits(N, amp)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
signal = zeros(1, N);
signal = amp * randi([0 1], 1, N);
end

