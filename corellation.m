n = -4:2;
startX = 4;
sf = 8000;
ts = 1/sf;
%x = [2 -1 3 7 1 2 -3];
n = 0:ts:0.01;
x = sin(2*pi*1000*n) + cos(2*pi*1000*n);

startY = 5;
y = cos(2*pi*1000*n);

[XY,lags] = xcorr(x,y);
%test = xcorr(y,x);
%subplot(1,1,1);
%plot(test);
[XXY,LAGS] = corellationByHand(x,y);
subplot(3, 1, 1);
xn = -4:2;
stem(n*8000,x);
title('x');
subplot(3, 1, 2);
%yn = -4:3;
stem(n*8000,y);
title('y');
subplot(3, 1, 3);
plot(lags,XY);
hold on;
stem(LAGS,XXY,'r');

%function [XY] = corr(x, y)
%    XY = sum(x .* y) / (sqrt(sum(x .^ 2)) * sqrt(sum(y .^ 2)));
%end






