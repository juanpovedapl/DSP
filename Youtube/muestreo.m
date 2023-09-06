clc;clear;
f = 1e3; % Frecuencia de senal
Tp=1/f;
Fs =100*f; % Frecuencia de muestreo

n =0:1/Fs:1*(1/f); % Tiempo de observacion 
s=cos(2*pi*f*n); % Senal digitalizada  

plot(n,s)
hold on
stem(n,s)
hold off