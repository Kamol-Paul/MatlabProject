%Unit Step Sequence

N = 21;
x = ones(1,N);
n = 0:1:N-1;
subplot(2,2,1);
stem(n,x);
xlabel('n');
ylabel('x(n)');
title('Unit Step Sequence');

%Exponential sequence : -

x2 = 0.8.^n;
subplot(2,2,3);
stem(n,x2);
xlabel('n');
ylabel('x(n)');
title('Exponential Sequence');

%Ramp sequence 
t = 0:7;
subplot(2,2,2);
stem(t,t);
xlabel('c');
ylabel('Amplitude');
title('Ramp Sequence');

%sinusoidal sequence

t = 0:0.01:pi;
y = sin(2*pi*t);

subplot(2,2,4);
plot(t,y);
ylabel('Amplitude');
xlabel('e');
title('Sinusoidal sequence');

