function output = frequncyToTime(frequncyDomainVector)
  dftLenth = length(frequncyDomainVector);
  output = zeros(1,dftLenth);
  for k = 1:dftLenth
    for n = 1:dftLenth
      output(k) = output(k) + frequncyDomainVector(n)*exp(j*2*pi*(n-1)*(k-1)/dftLenth);
    end
  end
  output = output/dftLenth;
end
