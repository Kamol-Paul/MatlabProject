t = 0:0.0001:.1;

x = 5 * cos (100 * pi * t);
subplot(1,1,1);
%plot(t,x);
grid on;
hold on;
n = 0:20;
y = 5 * cos(pi * 100/200 *n );
y_75 = 5 * cos(pi * 100/75 *n );
stem(n,y, 'LineWidth', 2);
stem(n,y_75,'g', 'LineWidth',2);
n = 0:0.1:20;
y = 5 * cos(pi * 100/200 * n);
plot(n,y);


