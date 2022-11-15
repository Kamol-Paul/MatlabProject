function output = MyConvolution(X,H)
length_x = length(X);
length_impulse = length(H);
N = length_x + length_impulse;
output = zeros(1,N-1);
X = [X zeros(1,N-length_x)];
H = [H zeros(1,N-length_impulse)];

for n = 1:N
    for k = 1:n
        output(n) = output(n) + X(k) * H(n-k +1);
    end
end
end