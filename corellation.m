n = -4:2;
startX = 4;
x = [2 -1 3 7 1 2 -3];
startY = 5;
y = [1 -1 2 -2 4 1 -2 5];

[XY,lags] = xcorr(x,y);
%test = xcorr(y,x);
%subplot(1,1,1);
%plot(test);
[XXY,LAGS] = corellationByHand(x,y);
subplot(3, 1, 1);
xn = -4:2;
stem(xn,x,'.');
title('x');
subplot(3, 1, 2);
yn = -4:3;
stem(yn,y,'.');
title('y');
subplot(3, 1, 3);
stem(lags,XY);
hold on;
stem(LAGS,XXY,'r');

%function [XY] = corr(x, y)
%    XY = sum(x .* y) / (sqrt(sum(x .^ 2)) * sqrt(sum(y .^ 2)));
%end






