%Graficar una Senal importada
y=load('ECG.txt');
plot(y)
xlabel('MUestras(N)');
ylabel('Amplitud')
title('Senal');

Fs=100;
Ts=1/Fs;
n =0:Ts:1;
y = sin(2*pi*n)
figure()
plot(n,y)
xlabel('Muestras (n)');
ylabel('Amplitud')
title('Senal Senoidal');


% Generar 2s de un pulso triangular y rectangular fs =10khz
%anchura de 20 ms
%FOrmas de onda aperiodicas

fs = 10000;
t=-1:1/fs:1;
x1 = tripuls(t,20e-3);
x2 = rectpuls(t,20e-3);

figure()
subplot(2,1,1)
plot(t,x1)
xlabel('Tiempo (s)');
ylabel('Amplitud')
title('Pulso triangular');
subplot(2,1,2)
plot(t,x2)
xlabel('Tiempo (s)');
ylabel('Amplitud')
title('Pulso cuadrado');


% Tren de pulsos gausianos 
T= 0:1/50e3:10e-3; %vector de N muestras
D= [0:1/1e3:10e-3;0.8.^(0:10)]'; %Delay entre cada pulso
Y= pulstran (T,D,@gauspuls,10E3,0.5);

figure()
plot(T*1e3,Y)
xlabel('Tiempo (ms)');
ylabel('Amplitud')
title('TRen de pulso gausiano ');