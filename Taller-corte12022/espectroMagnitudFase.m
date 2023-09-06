%Enunciado
%Obtenga el espectro de magnitud y fase de la señal x(n)=cos(3n2π​)+sin(5n2π​), 

% Parámetros
N = 1000; % Número de muestras
n = 0:N-1; % Vector de índices de muestras
% Señal x(n)
x = cos(n .* (2*pi/3)) + sin(n .* (2*pi/5));

% Cálculo de la DFT
X = fft(x);

% Cálculo de las frecuencias correspondientes a los bins de la DFT
frequencies = (0:N-1) * (1/N);

% Gráfica del espectro de magnitud
subplot(2, 1, 1);
stem(frequencies, abs(X));
xlabel('Frecuencia (ciclos por muestra)');
ylabel('Magnitud');
title('Espectro de Magnitud');

% Gráfica del espectro de fase
subplot(2, 1, 2);
stem(frequencies, angle(X));
xlabel('Frecuencia (ciclos por muestra)');
ylabel('Fase (radianes)');
title('Espectro de Fase');
