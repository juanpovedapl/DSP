function [senal_c, instantes_c]=combina_v(frec1,frec2,frec3);

N1=1/frec1; N2=1/frec2; N3=1/frec3;
mayorN=max([N1 N2 N3]);
instantes_c=0:1:mayorN;
k1=mayorN/N1; k2=mayorN/N2; k3=mayorN/N3; 

senal_c=cos_v(frec1,k1)+cos_v(frec2,k2)+cos_v(frec3,k3);


function [senal, instantes]=cos_v(frec,k);
N=1/frec;
instantes=0:1:k*N;
senal=cos(2*pi*frec*instantes);



