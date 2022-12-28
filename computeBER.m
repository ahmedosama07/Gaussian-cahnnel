function BER = computeBER(signal ,noisySignal)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
BERVector=noisySignal - signal;
BERVectorABS=abs(BERVector);
NumWrongBits=sum(BERVectorABS);
BER=NumWrongBits/length(signal);
end

