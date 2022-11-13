fr = 2;
t = 0:0.01:1;
f = sin(2*pi*fr*t);
sf = 32; % accuracy
n = 1:40; % number of point
%n = linspace(0,20,20);
x = sin(2*pi*(fr/sf)*n);
stem(n,x);