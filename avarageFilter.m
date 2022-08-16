oneFifth = 1/6;
xCofficient = 1/10 * ones(10);
yCofficient = [ 1 0];
%make sure yCofficient[0] = 1

sf = 8000;
ts = 1 / sf;

n = 0:25;
f = 1000;
x = sin(2* pi * f * n *ts);
avarage = differntialEquationByHand(yCofficient,xCofficient,x);
grid on;
hold on;
stem(n,x,'red');
plot(n,avarage,'black');
n = linspace(0,25,1000);
x = sin(2*pi*f*n*ts);
plot(n,x,'green');
avarage = differntialEquationByHand(yCofficient,xCofficient,x);
plot(n,avarage,'yellow');
title("red for the original signal & black for the avarage signal.")