f = 440;
sr = 44100;
s = 1;
t = linspace(0,s,sr * s);
y = 5 * sin(2*pi*f*t);
b = 4;
sample_max = 2^(b-1)-1;
max_amplitude = max(y);
y_quantized = floor(y*sample_max) / max_amplitude;
hold on
stem(2000 * t(1:200), y_quantized(1:200));
%plot(t,y);