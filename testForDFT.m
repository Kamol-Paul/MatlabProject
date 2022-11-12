% example from the book lyon dft
clc;
clear;
fs = 8000;
n = 0:7;
ts = 1/fs;
%nts = ts .* n;
x = sin(2*pi*1000*ts*n) + 0.5*sin(2*pi*2000 *ts * n + (3*pi/4));
saveX = x;
subplot(421)
hold on;
title('x');
stem(n,x);
hold off;
ph = angle(x);
subplot(422);
hold on;
title('x phase');
stem(n,ph);
hold off;
Xm = timeToFrequncy(x);
rl = real(Xm);
im = imag(Xm);
subplot(423);
hold on;
title('real');
stem(n,rl);
hold off;
subplot(424);
hold on;
title('ima');
stem(im);
hold off;
mag = abs(Xm);
ph = angle(Xm);
subplot(425);
hold on;
title('magnitude');
stem(n,mag);
hold off;

subplot(426);
hold on;
title('phase');
ph = rad2deg(ph);
stem(n,ph);
disp(ph);
hold off;

XX = frequncyToTime(Xm);
subplot(4,2,7);
hold on;
title('x');
stem(n,real(XX));
hold off;

subplot(4,2,8);
hold on;
title('phase');
stem(n,rad2deg(angle(XX)));

disp(real(saveX)-real(XX));


