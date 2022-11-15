function output = MyIDft(X)
N = length(X);
output = zeros(1, N);
for k = 1:N
    for n = 1:N
        output(k) = output(k) + X(n)*exp(1i*2*pi*(k-1)*(n-1)/N);
    end
end
output = output / N;
end