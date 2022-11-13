f = 440;
sr = 44100;
s = 1;
t = linspace(0,0.005,100);
y = 5 * sin(2*pi*f*t);
b = 4;
sample_max = 2^(b-1)-1;
max_amplitude = max(abs(y));


y_quantized = floor((y*sample_max )/max_amplitude + 0.5 );%* max_amplitude;
hold on
stem(t, y_quantized);
%plot(2000 * t(1:100),y(1:100)*sample_max, "red");