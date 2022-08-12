Fs = 1000;
T = 1/Fs;
L = 1500;
t = (1:L-1)*T;

S = 0.7 *sin(2*pi*50*t) + sin(2*pi*120*t);

X = S + randn(size(t));
subplot(2,1,1);
hold on;
plot(1000*t(1:100) , S(1:100), 'red' );
plot(1000*t(1:100) , X(1:100) , 'blue' );
hold off;

Y = fft(X);
X = fft(S);
P2 = abs(Y/L);
P4 = abs(X/L);
P1 = P2(1:L/2);
P3 = P4(1:L/2);

P1(2:end-1) = 2*P1(2:end-1);
P3(2:end-1) = 2* P3(2:end-1);
f = Fs * (1:L/2)/L;
hold on;
subplot(2,1,2);
stem(f,P3, 'red');
stem(f,P1, 'blue');
hold off