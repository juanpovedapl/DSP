function [x,n]=sin_discrete(K,N,m);
n=0:1:m*N-1;
f=K/N;
x=cos(2*pi*f*n);