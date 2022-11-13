t = 0: 0.1 : 1;
f = 5;

%xx = 2 * pi * f * t;


x = sin(2*pi*f*t);
subplot(2,1,1);
stem(t,x);

sf = 20;
n = 0: 1/sf : 1;
temp = f / sf;
%yy = 2*pi * (f/sf) * n;
y = sin(2*pi*f*n);

aF = 9;
t = 0:1/aF:1;
ay = sin(2*pi*f*t); 
subplot(2,1,2);
hold on;
grid on;
%plot(t,x);
plot(n,y,"green");
plot(t,ay, "red");
%stem(n,yy);
tt = 0:0.0001:1;
yy = sin(2*pi*f*tt);
plot(tt,yy, 'blue');
hold off