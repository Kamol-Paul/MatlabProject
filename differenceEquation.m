%y[n] = .97 * y[n-1] + x[n];
%y[n] = y[n-1] + y[n-2] + x[n];


xCofficinet = [1 0];
yCofficinet = [1 -1 -1];

% F[R] = (1) / (1 - .97R);

initialValue = [0 0];

inputX = linspace(0,0,14);
inputX(1:1) = 1;

Y = filter(xCofficinet,yCofficinet,inputX);

% Y = H(R) * X
% H(R) = X(R) / Y(R)

n = 1:length(Y);
plot(n,Y , "blue");
hold on;
n = 1:length(inputX);
plot(n,inputX, 'r');