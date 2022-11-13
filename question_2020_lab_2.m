t = 0:0.0001:.1;
x1 = 5 * cos (100 * pi * t);
x2 = 10 * cos (200 * pi * t);
subplot(2,2,1);
plot(t,x1);
subplot(222);
plot(t,x2);

subplot(223);
plot(t,x1+x2);
