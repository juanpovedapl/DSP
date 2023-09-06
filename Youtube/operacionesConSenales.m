clc; clear; close all; 
load('recursosV1/ecg.mat');

longitud = 2500;
signal =sig(1:longitud,:);
time =tm(1:longitud,:);
plot(time,signal);
grid on


maxS = max(signal);
minS = min(signal);

%% Suma
%Sirve para desplzar la senal en el eje horizontal 
signalSuma =signal + abs(minS);
figure(2)
subplot(1,2,1)
plot(time,signal)
ylim([minS*2 maxS*2])
grid on
subplot(1,2,2)
plot(time,signalSuma)
ylim([minS*2 maxS*2])
grid on