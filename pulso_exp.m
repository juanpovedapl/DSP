function [matrix_sx,matrix_espc,digit_frec]=pulso_exp(N,P,L,A)
    n=0:N-1;
    for K=0:N-L
        matrix_sx(K+1,:)=[A*exp(-n(1:L+k)/(L+K)) zeros(1,N-L-K)];
    end
    matrix_espc=abs(fft(matrix_sx'))';
    digit_frec=0.2*pi/length(n)-2*pi/length(n);
end