sf = 440;
T = 1/sf;
t = 0:T:1;
x = sin(2*pi*10*t);
y = cos(2*pi*10*t);

[XY,lag] = xcorr(x,y);
subplot(3,1,1);
plot(t,x);
subplot(3,1,2);
plot(t,y);
subplot(3,1,3);
plot(lag,XY);