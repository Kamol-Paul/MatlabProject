function output = convolutionByHand(input,impulseResponse)
    lenInput = length(input);
    lenImpulseResponse = length(impulseResponse);
    output = zeros(1,lenInput + lenImpulseResponse - 1);

    for i = 1:lenInput
        for j = 1:lenImpulseResponse
            output(i + j - 1) = output(i + j - 1) + input(i) * impulseResponse(j);
        end
    end
end