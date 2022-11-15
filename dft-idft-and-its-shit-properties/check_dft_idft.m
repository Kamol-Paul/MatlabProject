%we use x = sin(2*pi*6*t) + sin(2*pi*12*t)

sf = 48;
n = 0:80;
original_signal = sin(2*pi*6/sf*n) + sin(2*pi*12/sf*n);
subplot(221);
stem(n,original_signal);
axis([0 80 -max(abs(original_signal)) max(abs(original_signal))]);
title("Original signal");
frequency_of_original_signal = MyDft(original_signal);
subplot(222);
stem(n * sf /length(n) ,real(frequency_of_original_signal));
axis([0 47 -40 40]);
title("Original signal requency");
original_signal = MyIDft(frequency_of_original_signal);
subplot(223);
stem(n,real(original_signal));


