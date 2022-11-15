function[output,lags] = MyCorellation(X,Y)
x_length = length(X);
y_length = length(Y);

output = zeros(1, x_length+y_length);
lags = -y_length + 1 : x_length;
y_bar = flip(Y);
    for n = 1:x_length
        for k = 1:y_length
            output(n+k-1) = output(n+k-1) + X(n) * y_bar(k);
        end
    end
end