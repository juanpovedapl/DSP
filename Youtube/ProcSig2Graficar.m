clear; clc; close all;

% Graficar una se�al importada
y = load('ECG.txt');
plot(y)
xlabel('Muestras(n)')
ylabel('Amplitud')
title('Se�al ECG')

% Generar una se�al discreta
Fs = 100;
Ts = 1/Fs;
ts = 0:Ts:1;
y = sin(2*pi*ts);
figure()
plot(y)
xlabel('Tiempo (s)')
ylabel('Amplitud')
title('Se�al senoidal')


% Generar 1.5s de una onda diente de sierra y cuadrada
% Formas de onda peri�dicas

fs = 1000;
t = 0:1/fs:1.5;
x1 = sawtooth(2*pi*50*t);
x2 = square(2*pi*50*t);

figure()
subplot(2,1,1)
plot(t,x1)
xlabel('Tiempo (s)')
ylabel('Amplitud')
title('Onda peri�dica diente de sierra')
subplot(2,1,2)
plot(t,x2)
xlabel('Tiempo (s)')
ylabel('Amplitud')
title('Onda peri�dica cuadrada')

% Generar 2s de un pulso triangular y rectangular fs=10kHz
% anchura de 20ms
% Formas de onda aperi�dicas

fs = 10000;
t = -1:1/fs:1;
x1 = tripuls(t,20e-3);
x2 = rectpuls(t,20e-3);

figure()
subplot(2,1,1)
plot(t,x1)
xlabel('Tiempo (s)')
ylabel('Amplitud')
title('Pulso aperi�dico triangular')
subplot(2,1,2)
plot(t,x2)
xlabel('Tiempo (s)')
ylabel('Amplitud')
title('Pulso aperi�dico rectangular')


% Trenes de pulsos

fs = 100E9;
D = [2.5 10 17.5]'*1e-9;
t = 0:1/fs:2500/fs;
w = 1e-9;
yp = pulstran(t,D,@rectpuls,w);

T = 0:1/50e3:10e-3;
D = [0:1/1e3:10e-3;
    0.8.^(0:10)]';
Y = pulstran(T,D,@gauspuls,10E3,0.5);

figure()
subplot(2,1,1)
plot(t*1e9,yp)
xlabel('Tiempo (ns)')
ylabel('Amplitud')
title('Tren de pulsos rectangular')
subplot(2,1,2)
plot(T*1e3,Y)
xlabel('Tiempo (ms)')
ylabel('Amplitud')
title('Tren de pulsos Gausiano')












