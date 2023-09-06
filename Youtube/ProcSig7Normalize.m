load ('ecg.mat')

s = sig(1:1000,1);
plot(s)

mins = min(s);
s2 = s-mins; % El punto mínimo será 0

figure()
plot(s2)

maxs2 = max(s2);
sn = s2/maxs2; % El punto máximo será 1 y el resto de valores se
% escalan entre 0 y 1

figure()
plot(sn)

%% Funciones para normalizar y re-escalar

sn2 = normalize(s); % Centro en 0, sd 1 en los datos
figure()
plot(sn2)

sn21 = normalize(s,'range'); % Tiene diferentes métodos.
% range 0-1
figure()
plot(sn21)

sn3 = rescale(s); % Escala los datos entre 0-1
figure()
plot(sn3)

sn31 = rescale(s,-5,1); % Escala los datos de un vector en un 
% intervalo específico

figure()
plot(sn31)






