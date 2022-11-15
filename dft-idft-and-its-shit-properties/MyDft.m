function output = MyDft(x)
N = length(x);
output = zeros(1,N);
for k = 1:N
    for n = 1:N
        output(k) = output(k) + x(n)*exp(-1i*2*pi*(n-1)*(k-1)/N);
    end
end
end