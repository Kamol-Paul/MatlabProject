% y(n) = y(n-1) + x(n) + x(n-2);
%
%X [1 0 0 0 0 0 0 0 0]
%Y [1 1 2 2 2 2 2 2 2 ]

y_cofficient = [1 -1];
x_cofficient = [1 0 1];

input = zeros(1, 10);
input(1) = 1;
Y =  differntialEquationByHand(y_cofficient,x_cofficient,input);
stem(0:length(input)-1, Y);