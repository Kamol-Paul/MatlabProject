t = 0: 0.1 : 1;
f = 5;

xx = 2 * pi * f * t;
x = sin(2*pi*f*t);
subplot(2,1,1);
stem(t,x);

sf = 20;
n = 0 : 20;
temp = f / sf;
yy = 2*pi * (f/sf) * n;
y = sin(yy);


aF = 9;
ay = sin(2*pi*(f/aF) * n); 
subplot(2,1,2);
hold on
%plot(t,x);
plot(n,y,"green");
plot(n,ay, "red");
%stem(n,yy);
hold off