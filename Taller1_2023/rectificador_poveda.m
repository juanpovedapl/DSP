% Definición de parámetros
% Frecuencia de la fuente
% Relación de espiras del transformador
% Resistencia interna del condensador
% Capacidad del condensador

function [vi,vo,vd,vr,t,b,a] = rectificador_poveda(F,N1,N2,R,C,factor,num_ciclos)

    %F = 60;
    %N1 = 1000;
    %N2 = 100;
    %R = 1/(120*0.1);
    %C = 0.1; 
    
    % Otros parámetros
    %factor = 100; que tan pequeños o grandes sera el periodo de muestreo ,
    %recuerde que el peor favtor seria 2 por la frecuencia de nyquis 
    %num_ciclos = 5; es decir cuantes veces va a repetir el periodo
    
    % Cálculos de tiempo y tiempo de muestreo
    T = 1/F;
    Ts = T/factor;
    t = 0:Ts:num_ciclos*T;
    
    % Generación de la señal de entrada vi (fuente)
    vi = 120 * sin(2*pi*F*t);
    
    % Transformación de la señal vi a la salida vo mediante el transformador
    vo = vi * (N2/N1);
    
    % Rectificación de onda completa en la señal vo
    vd = abs(vo);
    
    % Coeficientes del filtro analógico
    b = [0, 1];
    a = [R*C, 1];
    
    % Transformación del filtro analógico a digital mediante la transformación bilineal
    [bz, az] = bilinear(b, a, 1/Ts);
    
    % Aplicación del filtro digital a la señal rectificada vd
    vr = filter(bz, az, vd);
end
