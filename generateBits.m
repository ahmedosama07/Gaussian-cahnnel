function signal = generateBits(N, amp)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
signal = zeros(N, 1);
signal = amp * randi([0 1], N, 1);
end

