close all;clear all;clc;
SNRdB=1:1:12;                                       %Signal to Noise Ratio in dB
SNR=10.^(SNRdB/10);                             %Signal to Noise Ratio in Linear Scale
Bit_Length=100;                                   %No. of Bits Transmitted
BER=zeros(1,length(SNRdB));      %Simulated Bit Error Rate

%% BPSK Transmission over AWGN channel
parfor k=1:length(SNR);
    x=(2*floor(2*rand(1,Bit_Length)))-1;
    y=(sqrt(SNR(k))*x)+randn(1,Bit_Length);
                                                                
    BER(k)=length(find((y.*x)<0));                  %Total number of bits in error
end
BER=BER/Bit_Length;
semilogy(SNRdB,BER,'m-<', 'linewidth' ,2.0);
hold on
semilogy(SNRdB,qfunc(sqrt(SNR)),'b-','linewidth',2.0);      %Theoritical Bit Error Rate
title('BPSK over AWGN Simulation');xlabel('SNR in dB');ylabel('BER');
legend('BER(Simulated)','BER(Theoritical)')
axis tight 
grid