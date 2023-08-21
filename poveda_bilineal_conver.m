%

%function[b, a, bd, ad, Ha, omega, Hd, omegad, Tc, omegadM]=poveda_bilineal_conver(Fp, Fs, T) 
function[b, a, bd, ad, Ha, Hd, omegad]=poveda_bilineal_conver(Fp, Fs, T)

puntos=512;
%Filtro analógico
F=1/T; Wp=Fp/(F/2); Ws=Fs/(F/2);
[n, Wn]=buttord (Wp, Ws, 3, 60, 's');
[b, a]=butter(n, Wn,'s');
Ha=freqs(b, a, Wn);

%Transformación bilineal
[bd, ad]=bilinear(b, a, F);
[Hd, omegad] = freqz(bd, ad, puntos);

%Hallat Tc con FpH
omega=(2/T)*tan(omegad/2);

%CONCLUSIÓN
%