xCofficient = [0.05];
yCofficient = [1 .95];
%make sure yCofficient[0] = 1

sf = 8000;
ts = 1 / sf;

n = 0:100;
f = 1000;
x = ones(length(n));
highpass = differntialEquationByHand(yCofficient,xCofficient,x);
grid on;
subplot(2,1,1)
stem(n,x,'red');
subplot(2,1,2);
stem(n,highpass,'black');
title("red for the original signal & black for the highPass signal.")