function X_shift = MyTimeShift(X,m)
%m indicate the time shift in frequncy domain
N = length(X);
X_shift = zeros(1,N);
for k = 1:8
    X_shift(k) = X(k)*exp(-1i*2*pi*m*(k-1)/8);
end
end