function [t, senal]=mi_combb_continuo(f,Fs)
    kmax=Fs/2*f;
    t=0:1/Fs:(1/f)-(1/Fs)
    senal=ones(1,length(Fs));
    for k=1:kmax
    senal= senal + cos(2*pi*k*f*t)
    end
%Ruido blanco 
%en discreto si k igual a 1 seria la fundamental
%mesage