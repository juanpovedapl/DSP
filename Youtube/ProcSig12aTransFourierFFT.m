% Transformada r�pida de Fourier

Fs = 1000; % Frecuencia de muestreo
T = 1/Fs;  % Periodo de muestreo
L = 1500;  % Tama�o de la se�al
t = (0:L-1)*T; % Vector de tiempo


S1 = 5*sin (2*pi*50*t); % Se�al de 50 Hz
S2 = 5*sin (2*pi*120*t); % Se�al de 120 Hz

% S = S1+S2;
S = S1+S2+5*randn(size(t));

plot(1000*t,S)

title('Se�al sinusoide')
xlabel('t (ms)')
ylabel('X(t)')


% Transformada r�pida de Fourier
Y = fft(S);

% Espectro bilateral
P2 = abs(Y/L);

% Espectro unilateral basado en el bilateral y longitud
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:(L/2))/L;
figure()
plot(f,P1)
title('Espectro de amplitudes de las frecuencias de X(t)')
xlabel('f (Hz)')
ylabel('A (f)')



