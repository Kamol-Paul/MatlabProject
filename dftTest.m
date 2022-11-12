sf = 80000;
dt = 1/ sf;
n = 0:1000;
x = sin(2*pi*(1000/sf)*n);
subplot(3,1,1)
plot(n,x);
title("original signal");
grid on;

freq = fft(x);
subplot ( 3,1,2);
hold on;
mag = abs(freq);
stem((n*sf)/length(n),2*mag/length(n));
title("frequency Domain");

backTotime = ifft(mag);
magT = real(backTotime);
subplot(3,1,3);
plot(n,magT);
title("BackToTime domain");