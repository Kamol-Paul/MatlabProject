%we use x = sin(2*pi*6*t) + sin(2*pi*12*t)

sf = 48;
n = 0:80;
original_signal = sin(2*pi*6/sf*n) + sin(2*pi*12/sf*n);
subplot(221);
stem(n,original_signal);
axis([0 80 -max(abs(original_signal)) max(abs(original_signal))]);
title("Original signal");
frequency_of_original_signal = fft(original_signal);
subplot(222);
stem(n * sf /length(n) ,real(frequency_of_original_signal));
axis([0 47 -40 40]);
title("Original signal requency");

sf = 24;
n = 0:80;
original_signal = sin(2*pi*6/sf*n) + sin(2*pi*12/sf*n);
subplot(223);
stem(n,original_signal);
axis([0 80 -max(abs(original_signal)) max(abs(original_signal))]);
title("Alising signal");
frequency_of_original_signal = fft(original_signal);
subplot(224);
stem(n * sf /length(n) ,real(frequency_of_original_signal));
axis([0 47 -40 40]);
title("Alising signal requency");
subplot(222);
hold on;
%stem(n * sf /length(n) ,real(frequency_of_original_signal));


