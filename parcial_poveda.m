
N=12;
%L=10;
A=1;

%argu=-n(1,1:L-1)/L
%sn_parcial= A*exp(argu)
%sn= [sn_parcial zeros(1,length(n)-L]
%n=0:N-1
senales[sn,SN,W]=
for L = 1:N-1
    n=0:N-1
    argu=-n(1,1:L-1)/L;
    sn_parcial= A*exp(argu);
    sn(L+1,:)=[sn_parcial zeros(1,N-1-L)];
end
