function [x,t]=sin_continuos(F,Fs,m);
%Esta función genera una cosenoside en tiempo continuo.
%
%La sintaxis es...
%F es la frecuencia en Hertz.
%Ts es el tiempo de muestreo
%m es ...
%Copy Right. All Right Reseved 

t=0:1/Fs:m*(1/F-1/Fs);
x=cos(2*pi*F*t);