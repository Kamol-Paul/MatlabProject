n = 0:7;
x = [1 1 2 2 3 3 4 4];

X = MyDft(x);
xx = MyIDft(X);
subplot(421);
stem(n,x);
axis([0 7 0 4]);
subplot(422);
stem(n,abs(X));
subplot(423);
stem(n,xx);

m = -2;
XX =  MyTimeShift(X,m);
%subplot(424);
%stem(n,MyIDft(XX));

for l = 1:5
    Ax = MyTimeShift(X,l);
    subplot(4,2,l+3);
    stem(n,MyIDft(Ax));
    title(strcat("for the time shift of " + string(l)));
end