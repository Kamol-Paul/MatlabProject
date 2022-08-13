function [output,lags] = corellationByHand(X,Y)
lengthX = length(X);
lengthY = length(Y);
output = zeros(1,lengthX + lengthY + 1);
  conjugateY = conj(Y);
  for i = 1:lengthX
      for j = 1:lengthY
          output(i + j - 1) = output(i + j - 1) + X(i) * conjugateY(j);
      end
  end
  lags = -lengthY + 1:lengthX;

end