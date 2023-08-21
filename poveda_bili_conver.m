%Juan Pablo Poveda Lopez 20162150736 8 DE may 2023


function[OMEGA,w_imp,w_bili] = poveda_bili_conver(b,a,T, OMEGA_inf,OMEGA_sup,M)

puntos=OMEGA_inf:OMEGA_sup/M:OMEGA_sup;


w=puntos*T
Ha=freqs(b, a, puntos);
%BILINEAR
[bd, ad]=bilinear(b, a, F);
w_bili=bd/ad;
[Hd, omegad] = freqz(bd, ad, puntos);


[bz,az] = impinvar(b,a,ws);
w_imp=bz/az
freqz(bz,az,N);