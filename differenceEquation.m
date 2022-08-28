%y[n] = .97 * y[n-1] + x[n];
%y[n] = y[n] + y[n-2] + x[n];


xCofficinet = [1 0];
yCofficinet = [1 -1 -1];

% F[R] = (1) / (1 - .97R);

initialValue = [0 0];

inputX = linspace(0,0,14);
inputXShiftOne = linspace(0,0,14);
inputX(1) = 1;
inputXShiftOne(2) = 1;
 
Y = differntialEquationByHand(yCofficinet,xCofficinet,inputX);
YShiftOne = differntialEquationByHand(yCofficinet,xCofficinet,inputXShiftOne);
% Y = H(R) * X
% H(R) = X(R) / Y(R)

subplot(3,2,1);
n = 1:length(Y);
grid on;
stem(n,Y , "blue");
hold on;
n = 1:length(inputX);
stem(n,YShiftOne,'red');
hold off;
for i = 3:6
    input = zeros(14);
    input(i) = 1;
    subplot(3,2,i);
    %YA = differntialEquationByHand(yCofficinet,xCofficinet,inputX);
    YA = Y * input;
    stem(n,YA,"blue");
    title("shift" + (i-1) + "time");
end
hold off;
display(Y);