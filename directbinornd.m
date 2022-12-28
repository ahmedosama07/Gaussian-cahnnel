function X = directbinornd(N,p,m,n)
    X = zeros(m,n); % Preallocate memory
    disp(m*n);
    for i = 1:m*n
        u = rand(N,1);
        X(i) = sum(u < p);
    end
end