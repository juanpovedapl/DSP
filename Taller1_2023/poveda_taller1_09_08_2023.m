
% Definición de parámetros
f = 60;      % Frecuencia de la red eléctrica en Hz
N1 = 1000;   % Número de espiras del transformador (primario)
N2 = 100;    % Número de espiras del transformador (secundario)
c = 5;       % Número de ciclos
T = 1/f;     % Periodo de la señal en segundos
Ts = T/100;  % Tiempo de muestreo

% Generación de la señal de entrada
t = 0:Ts:c*T;  % Vector de tiempo desde 0 hasta c*T con pasos de Ts
vi = 120*sqrt(2)*sin(2*pi*f*t);  % Señal de entrada (voltaje) basada en una onda senoidal de 120V rms

% Transformación de la señal a la salida del transformador
vo = vi * (N2/N1);  % Relación de transformación del transformador

% Rectificación de onda completa (valor absoluto)
vd = abs(vo);  % Rectificación de onda completa

% Parámetros para el filtro
Cap = 0.1;     % Capacitancia en Faradios
R = 1/(120*Cap);  % Resistencia calculada en función de la capacitancia y la frecuencia

% Diseño del filtro mediante la transformación bilineal
[bz, az] = bilinear([0, 1], [R*Cap, 1], 1/Ts);  % Coeficientes del filtro

% Aplicación del filtro a la señal rectificada
vr = filter(bz, az, vd);  % Señal filtrada

% Gráfica de la señal rectificada
plot(t, vr);
xlabel('Tiempo (s)');
ylabel('Voltaje (V)');
title('Señal Rectificada');
