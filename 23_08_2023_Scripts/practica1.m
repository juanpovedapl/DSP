% Guia práctica 1 DSP. Elaborado por Vladimir Mosquera.

F=60; Ts=(1/F)/100; t=0:Ts:10*(1/F); N1=1000; N2=100;

vi=120*sin(2*pi*F*t); 

vo=vi*(N2/N1);  % Reductor (trnasformador)
plot(t,vi,t,vo);

vd=abs(vo); % Rectificador de onda completa
figure; plot(t,vd);

R=200; C=0.41e-3; % R en ohmios y C en faradios.
b=[1]; a=[R*C 1];

[bz,az]=bilinear(b,a,1/Ts); % Se conviete el filtro a digital.
vr = filter(bz,az,vd);
figure; plot(t,vr);

figure; freqs(b,a);

% Se muestran las gráficas
figure;
plot(t,vo); hold on; plot(t,vd); hold on; plot(t,vr);
legend('Senal salida del transformador', 'Señal rectificadaonda completa', 'Señal filtrada');

