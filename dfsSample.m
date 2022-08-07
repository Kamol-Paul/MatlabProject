Fs = 1000;
T = 1/Fs;
L = 1500;
t = (1:L-1)*T;

S = 0.7 *sin(2*pi*50*t) + sin(2*pi*120*t);

X = S + randn(size(t));

%plot(1000*t(1:50) , X(1:50));

Y = fft(X);

P2 = abs(Y/L);

P1 = P2(1:L/2);

P1(2:end-1) = 2*P1(2:end-1);

f = Fs * (1:L/2)/L;

plot(f,P1);