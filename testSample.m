% Sample the sinusoid x = sin(2 pi f t), where f = 2 kHz, and plot the sampled
% signals over the continuous-time signal.
% Let x1 be the signal sampled at 10 kHz.
% Let x2 be the signal sampled at 3 kHz.

f = 2000;
T = 1/f;
tmin = 0;
tmax = 5*T;
dt = T/100;
dt1 = 1/10000;
dt2 = 1/3000;
t = tmin:dt:tmax;
t1 = tmin:dt1:tmax;
t2 = tmin:dt2:tmax;
x = sin(2*pi*f*t);
x1 = sin(2*pi*f*t1);
x2 = sin(2*pi*f*t2);
subplot(211)
plot(t*4000,x,'r');
hold on
plot(t1*4000,x1,'b');
subplot(212)
plot(t*4000,x,'r');
hold on
plot(t2*4000,x2,'b');
