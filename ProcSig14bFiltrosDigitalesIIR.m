clear
close all
clc

s = load('ECG.txt');

fs = 250; % Frecuencia de muestreo de la señal
fc = 60; % Frecuencia de corte

n = 6; % Orden del filtro
Wn = fc/(fs/2); % Frecuencia de corte normalizada 

[b,a] = butter(n,Wn,'low'); % Tipos 'low' | 'bandpass' | 'high' | 'stop'
freqz(b,a) % Respuesta de frecuencia del Filtro Digital (vector de respuesta de frecuencia de punto y el vector de frecuencia angular)

figure()
sf2 = filter(b,a,s); % Señal filtrada
subplot(211)
plot(s)
subplot(212)
plot(sf2)