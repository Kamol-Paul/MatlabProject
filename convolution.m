a = -1; %//This is the starting value of time for x(t).
b = 0;  %//Starting value of time for h(t).
 
 x = [ 2 -1 1 0 1 2]; %   input sequence
 h = [ 3 2 1]; % inpulse response

subplot( 3, 1, 1);
t = a : a+length(x)-1; %//tstep is not required here.
stem( t, x, "blue" , "*");
title("x(t)");
 
 subplot( 3, 1, 2);
 t = b : b+length(h)-1;
 stem( t, h,"red","*");
% xtitle = "h(t)";
 title("h(t)");
 y = conv( x, h);
 
 subplot( 3, 1, 3);
 t = a+b : a+b+length(y)-1;
 stem( t, y);
  %xtitle = "y(t)";
  title("y(t)");