function signal = generateBits(N, amp)
signal = zeros(N, 1);
signal = amp * randi([0 1], N, 1);
end

