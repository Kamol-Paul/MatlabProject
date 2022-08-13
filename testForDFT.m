% example from the book lyon dft
clc;
clear;
fs = 8000;
n = 0:7;
ts = 1/fs;
%nts = ts .* n;
n = linspace(0,7,100);
x = sin(2*pi*1000*ts*n) + 0.5*sin(2*pi*2000 *ts * n + (3*pi/4));
plot(n,x,'green');
xA = sin(2*pi*1000*ts*n);
xB = 0.5*sin(2*pi*2000*n*ts + 2*pi/4);
grid on;

hold on;
%plot(n,xA,'red');
%plot(n,xB,'blue');
n = 0:7;
x = sin(2*pi*1000*ts*n) + 0.5*sin(2*pi*2000 *ts * n + (3*pi/4));
%x = sin(2*pi*1000*ts*n) + cos(2*pi*1000*ts*n);
y = timeToFrequncy(x);
z = fft(x);
magnitudeOfx = abs(y);
phaseOfx = angle(y);
stem(n,x,'*','black');
%stem(n,magnitudeOfx,'red');
%stem(n,phaseOfx,'blue');
title("red for 1k, blue for 2k green for combnined");
fD = frequncyToTime(y);
magnitudeOffD = abs(fD);
phaseOffD = angle(fD);
realOfFD = real(fD);
imagOfFD = imag(fD);
stem(n,magnitudeOffD,'red');
stem(n,phaseOffD,'blue');
stem(n,realOfFD,'black');
stem(n,imagOfFD,'yellow');
