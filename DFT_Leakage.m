%understaning dft leackage from lyon book

sf = 64;
ts = 1/sf;
t = 0:ts:1;
n = 0:1:length(t)-1;
f = 3.6;
% for integer f we get exact frequcy in out frequcy domain
% but for fractional f we get a the leackage in out frequcy doamin
x = sin(2*pi*f*n*ts);
subplot(3,1,1);
plot(n,x);

fD = timeToFrequncy(x);
magnitudeFD = abs(fD);
subplot(3,1,2);
stem(n,magnitudeFD);
hold on;
phaseFD = angle(fD);
stem(n,phaseFD);
hold off;

tD = frequncyToTime(fD);
realTD = real(tD);
subplot(3,1,3);
%plot(n,magnitudeTD);
hold on;
%phaseTD = angle(tD);
%stem(n,phaseTD);
plot(n,realTD);
hold off;
