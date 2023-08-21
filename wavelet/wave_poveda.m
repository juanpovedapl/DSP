function [A,D] = wave_poveda(s,N_CA,N_cD)
N =3
[c,l] = wavedec(f,N,N_CA,N_CD); % Descomposición de la señal en 3 niveles

A = appcoef(c,l,N_CA,N_CD); % Coeficientes de aproximación (F.B.)
D = detcoef(c,l,1:N); % Coeficientes de detalle (F.A.)


end
