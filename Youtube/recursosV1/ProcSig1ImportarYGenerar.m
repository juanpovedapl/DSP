%Cargar una se�al .txt unidimensional
Signal = load('ECG.txt');

%Cargar una se�al .mat con dos vectores
Signal2 = load('ecg.mat');

%Cargar una se�al .xlsx de un archivo Excel
Signal3 = xlsread('ECG.xlsx');

%Generar una se�al discreta senoidal
Fs = 15; %Frecuencia de muestreo en Hz
Ts = 1/Fs; %Periodo de muestreo: tiempo entre cada muestra en s
ts = 0:Ts:1; %Vector con los momentos en el tiempo para los que est� definida la se�al
y = sin(2*pi*ts); %Se�al senoidal 1 periodo a 16 muestras

%Ejemplo de una se�al multicanal
Signal4 = load('MulticanalSignal.mat');