%lets understand the shit
sf = 1000;
n = 0: 1/sf : 1;
f = 10;
l = length(n);
x = sin(2*pi*f*n) + sin(2*pi *2*f*n);
% every time domain value will plot in the figure 1
figure(1);
plot(n,x);
grid on;
hold on;
% make the singnal noisy
y = x  + rand(1,l);
plot(n,y);
hold off;

% we get our signal. now we want to see it in frequency domain
nfft = 2.^nextpow2(l);
% take the nearest 2^k of l
%analyse the frequencey domain value of x and y
frequencyOfX = abs(fft(x,nfft));
frequencyOfY = abs(fft(y,nfft));
freq = (sf/2) * linspace(0,1,nfft/2 + 1);
figure(2);
stem(freq(1:50),frequencyOfX(1:50));
grid on;
hold on;
stem(freq(1:50),frequencyOfY(1:50));
hold off;

% now we need to find the filter cofficient for the band pass filter
cutOff = [9 21];
wn = cutOff / (sf/2);

% make it as the fundamental
order = 5;
[b,a] = butter(5, wn, 'bandpass');
% get the y  cofficient and x cofficient of the the filter use the
% funcation butter(order, cutoff, type)

[h,w] = freqz(b,a, 256,sf);
figure(3);
plot(w,real(h));
grid on;
hold on;
plot(w, imag(h));
hold off;

filtered = filter(b,a,y);
figure(1);
hold on;
plot(n,filtered,'LineWidth',2);
changePhase = filtfilt(b,a,y);
plot(n,changePhase,'LineWidth',3);
legend('original','noisy','normal filter', 'filtfilt');
hold off;

