%Nombre: Sofía Dussán Díaz
%Fecha: 18 octubre 2022

function[matriz_s, matriz_S, vector_frecuencia]=prueba1_sofia(N,L,P,A)
%matriz_s es la matriz de señales s(n)
%matriz_S es la matriz del espectro de magnitud s(k)
n=0:N-1;
for K=0:N-L;
    matriz_s(K+1,:)=[A*ones(1,L+K),-A*ones(1,N-L-K)];
end
matriz_S=abs(fft(matriz_s,P'))'; 

vector_frecuencia=