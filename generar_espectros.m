function [senales, espectros, omega] = generar_espectros(N, P)
    % Parámetros de la señal
    A = 1;
    
    % Inicializa matrices y vectores
    senales = zeros(N, N);
    espectros = zeros(N, P);
    omega = linspace(0, 2*pi, P);
    
    for L = 1:N
        % Genera la señal s(n) para el valor actual de L
        s = [A*ones(1, L), -A*ones(1, N-L)];
        senales(L, :) = s;
        
        % Calcula el espectro de la señal
        S = fft(s, P);
        espectros(L, :) = S;
    end
end