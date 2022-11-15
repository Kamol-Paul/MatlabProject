n = 0:7;
x = [1 1 2 2 3 3 4 4];

X = MyDft(x);
xx = MyIDft(X);
subplot(221);
stem(n,x);
axis([0 7 0 4]);
subplot(222);
stem(n,abs(X));
subplot(223);
stem(n,xx);

m = -2;
XX =  MyTimeShift(X,m);
subplot(224);
stem(n,MyIDft(XX));