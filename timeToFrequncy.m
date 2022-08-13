function output = timeToFrequncy(timeDomainVector)
  dftLenth = length(timeDomainVector);
  output = zeros(1,dftLenth);
  for k = 1:dftLenth
    for n = 1:dftLenth
      output(k) = output(k) + timeDomainVector(n)*exp(-1i*2*pi*(n-1)*(k-1)/dftLenth);
    end
  end

end
