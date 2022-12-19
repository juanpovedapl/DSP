%Juan Pablo Poveda López    1/12/2022
%La sfrecuecnias de corte para la implementacion del filtro debe ser una
%entrada ,tiempo de muestreo

function [a,b,Ha,omega,bz,az,hz,w,tc,w_mapeado]=poveda_invarianza_conver(fc,Fs,T)

%wn se refiere al vector de frecuencia en rads/s 
w=Fc.*pi/180; % fc deberia ser en el casoun paasavanda un vector con la frecuecnia de paso y de stop [fp fs]
Rp=3;Rs=40; %Atenuacion en la banda de paso y la de stop

[N, Wn] = buttord(w[1], w[2], Rp, Rs, 's') 
end

% filtro analogico
[B,A] = butter(5,2*pi*1200)
freqs(B,A);
title('respuesta filtro analogico')
%pause

%filtro digital
fs = 10000;
[Bd,Ad] = butter(5,1200/fs/2));
N = 128;
freqz (Bd,Ad,N);
title('respuesta filtro digital a N puntos')
% se utiliza la trasformacion bilineal para la conersion
[numd,dend] = bilinear(B,A,fs);
[HB1l1,vb1l1] = freqz(numd,dend,1000);
freqz(numd,dend,N);
title('Respuesta filtro digital a N puntos a partir del analogico');
%Se realiza la conversion usando invarianza impulsional
[bz,az] = impinvar(B,A,fs);
freqz(bz,az,N);
title('Respuesta filtro digital a N puntos a partir del analogico InImp')


  % Example 2:
    %   For data sampled at 1000 Hz, design a bandpass filter with passband 
    %   of 60 Hz to 200 Hz, with less than 3 dB of ripple in the passband, 
    %   and 40 dB attenuation in the stopbands that are 50 Hz wide on both 
    %   sides of the passband.
 
    Wp = [60 200]/500; Ws = [50 250]/500;   % Normalizing frequency
    Rp = 3; Rs = 40;
    [n,Wn] = buttord(Wp,Ws,Rp,Rs);  % Gives minimum order of filter
    [z,p,k] = butter(n,Wn);         % Butterworth filter design
    SOS = zp2sos(z,p,k);            % Converts to second order sections
    freqz(SOS,1024,1000)            % Plots the frequency response
