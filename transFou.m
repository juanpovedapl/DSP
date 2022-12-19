clear all ;
%Definición del muestreo
fm=10000; %frecuencia de muestreo (muestras/segundo)
Tm=1/fm ; %periodo de muestreo (segundos)
tt=0.5 ; %tiempo total en segundos (segundos)
t=0:Tm:tt; %instantes de tiempo en donde evaluar la señal
% Generación de la señal
WW=628; %Frecuencia angular en el dominio temporal
A=1; %Amplitud
s=A*sin(628*t); %señal seno
% Dibujar un periodo de la señal
mpp=floor(fm*2*pi /WW); %calcular muestras en un periodo
h1=figure;
stem(t(1:mpp),s(1:mpp));
title('Senal en el Tiempo');
xlabel('Tiempo(s)');
ylabel('Magnitud');
pause;
% Calcular transformada directa de Fourier
fs=fft(s,mpp);
[nf,nc]=size(fs);
mag=20*log10(abs(fs)); %magnitud en decibeles
factor=180.0/pi;
fase=factor*atan2(imag(fs),real(fs));
delta=2*pi/nc;
ww=0:delta:2*pi-delta; % Frecuencia en el dominio frecuencial
h2=figure;
stem(ww,mag);
title('Data spectrum');
xlabel('frequency');
ylabel('magnitude [dB]');
pause;
h3=figure;
stem(ww,fase);
title('Data spectrum');
xlabel('frequency');
ylabel('Phase [°]');
%keyboard; %Detiene ejecución del programa. Para continuar escriba return 
           %en la línea de comandos de Matlab.
close all;