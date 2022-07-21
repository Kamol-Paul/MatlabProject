fileId = fopen("input.txt", 'r');
x = str2num(fgetl(fileId));
h = str2num(fgetl(fileId));

y = conv(x,h);
subplot(2,2,1);
stem(x);
xlabel('a');
ylabel('Input Sequence');

subplot(2,2,2);
stem(h);
xlabel('b');
ylabel('Impulse Sequence');

subplot(2,2,3);
stem(y);
xlabel('c');
ylabel('output Sequence');
title('Convolution between two sequence');
