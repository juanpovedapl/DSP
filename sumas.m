hn=[];
for n=0:8;
    k=1:4;
    sum_de_k=2*sum((-1).^k.*cos((2*pi*k)/17*(n +0.5)))
    hn(n+1)=(1/17)*(1+sum_de_k)
end
n=0:16;
hn =[hn flip(hn(1:8))]
stem(n, hn)
