
f=60; % Frecuencia de la red 
N1=1000; %Numero de espiras del transformador 
N2=100; %Numero de espiras del tranformador 
c=10; % NUmero de ciclos 
Ts=((1/60)/100); % Tiempo de muestreo 
t=0:Ts:c*(1/f)
vi= 120*sqrt(2)*sin(2*pi*f*t);
vo=vi*(N2/N1);
vd=abs(vo);%La funcion abs actua como un rectificador de onda completa 
Cap=0.1; % capacitancia
R = 1/(120*Cap);
[bz,az] = bilinear(1,[R*CAP 1],vd);
vr = filter(bz,az,vd);

plot(t,vd)
