function output = convolutionByHand(input,impulseResponse)
    lenInput = length(input);
    lenImpulseResponse = length(impulseResponse);
    output = zeros(1,lenInput + lenImpulseResponse - 1);
    N = lenImpulseResponse + lenInput;
    input = [input zeros(1,N-lenInput)];
    impulseResponse = [impulseResponse zeros(1,N-lenImpulseResponse)];
    for n = 1:N
        output(n) = 0;
        for k = 1:n
            output(n) = output(n) + input(k)*impulseResponse(n-k+1);
        end
    end

end