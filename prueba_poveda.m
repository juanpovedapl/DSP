%Juan Pablo Poveda Lopez
%20162150736 pleaseeeee
%N perido
%L>N
%P puntos
function [sn,SN,frec]=prueba_poveda(N,L,A)
    n=0:N-1;
    for K=0:N-L 
        sn(K+1,:)=[A*ones(1,N-L+K) -A*ones(1,N-L-K)];
    end
     SN=abs(fft(sn'))';
     frec=0.5*pi/length(n)-2*pi/length(n);
end


