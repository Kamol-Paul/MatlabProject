sf = 1000;
n = 0:1/sf:1;
oneFre = sin(2*pi*1*n);
twoFre = sin(2*pi*3*n);
plot(n,oneFre,'LineWidth', 2);
hold on;
grid on;
plot(n,twoFre,'LineWidth',2);
sum = 0;

for i = 1:length(n)
    sum  = sum + oneFre(i)*twoFre(i);
end
disp(sum);