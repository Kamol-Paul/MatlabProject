x = [2 -1 1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14];
h = [1 1 1];
y = convolutionByHand(x,h);
n = 1:length(y);
plot(n,y, 'r');
hold on;
n = 1:length(x);
plot(n,x, 'b');