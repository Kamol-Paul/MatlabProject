n = -3:6;
startX = 4;
x = [1 2 3 4 5 6 7 8 9 10];
startY = 5;
y = [1 2 3 4 5 6 7 8 9 10];

[XY,lags] = xcorr(x, y);
[XXY,LAGS] = corellationByHand(x,y);
subplot(3, 1, 1);
stem(n,x,'.');
title('x');
subplot(3, 1, 2);
n = -4:5;
stem(n,y,'.');
title('y');
subplot(3, 1, 3);
stem(lags,XY);
hold on;
stem(LAGS,XXY,'r');

%function [XY] = corr(x, y)
%    XY = sum(x .* y) / (sqrt(sum(x .^ 2)) * sqrt(sum(y .^ 2)));
%end






