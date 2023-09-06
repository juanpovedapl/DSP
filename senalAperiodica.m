% Ejemplo de señal periódica
Fs = 1000;           % Frecuencia de muestreo
T = 1;               % Período de la señal periódica en segundos
t = 0:1/Fs:T-1/Fs;   % Vector de tiempo

% Crear una señal senoidal periódica
frecuencia = 5;      % Frecuencia de la señal en Hz
senal_periodica = sin(2*pi*frecuencia*t);

% Calcular la Transformada de Fourier de la señal periódica
espectro_periodico = fft(senal_periodica);

% Calcular el espectro de frecuencia
f = (0:length(espectro_periodico)-1)*Fs/length(espectro_periodico);

% Graficar el espectro de frecuencia de la señal periódica
subplot(2,1,1);
plot(f, abs(espectro_periodico));
xlabel('Frecuencia (Hz)');
ylabel('Amplitud');
title('Espectro de Frecuencia de la Señal Periódica');
grid on;

% Ahora, vamos a hacer que la señal sea aperiódica al aumentar su frecuencia
frecuencia_aperiodica = 50;  % Nueva frecuencia (mucho mayor que la original)

% Crear una señal senoidal aperiódica con la nueva frecuencia
senal_aperiodica = sin(2*pi*frecuencia_aperiodica*t);

% Calcular la Transformada de Fourier de la señal aperiódica
espectro_aperiodico = fft(senal_aperiodica);

% Calcular el espectro de frecuencia
f_aperiodico = (0:length(espectro_aperiodico)-1)*Fs/length(espectro_aperiodico);

% Graficar el espectro de frecuencia de la señal aperiódica
subplot(2,1,2);
plot(f_aperiodico, abs(espectro_aperiodico));
xlabel('Frecuencia (Hz)');
ylabel('Amplitud');
title('Espectro de Frecuencia de la Señal Aperiódica (Mayor Frecuencia)');
grid on;
