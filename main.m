% bits = generateBits(6, 1);
% n = bits .* randn(size(bits));
% b = bits + n;
% % b = noise(bits);
% l1=computeBER(bits, b);
% for i = 1 : 1 : 6
%     if b(1, i) > 0.5
%         b(1, i) = 1;
%     else
%         b(1, i) = 0;
%     end
% end
%l3=computeBER(bits, b);


rng('default'); % For reproducibility
X = directbinornd(1,0.3,1e4,1);
Xn = awgn(X, 0.3);

histogram(X,101);
l1=computeBER(X, Xn);

for i = 1 : 1 : 1e4
    if Xn(i, 1) > 0.5
        Xn(i, 1) = 1;
    else
        Xn(i, 1) = 0;
    end
end
err = 0;
for i = 1 : 1 : 1e4
    if Xn(i, 1) == X(i, 1)
        err = err + 1;
    end
end
err/(1e4)
l2=computeBER(X, Xn);

