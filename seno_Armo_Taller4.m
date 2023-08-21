% [MaArmonico,n]= seno_Armo_Taller4(N,K)
    
%end
N=10;
n=0:N-1;
sn_parcial=[sin(2*pi.*n(1:N/2)/N) ]
sn =[sn_parcial zeros(size(sn_parcial))]

k=[5 7 9 11];
for a=0:length(k)

    sn_parcial=[sin(2*k*pi.*n(1:N/2)/N) ];
    %sn =[sn_parcial zeros(size(sn_parcial))]
    sn(a+1,:)=[sn_parcial zeros(size(sn_parcial))];

end