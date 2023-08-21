clear ;

f = [0.1 0.2 0.3 ];
n=0:299;

x= 0.5.*sin(2*pi*f(1).*n) + 0.8.*sin(2*pi*f(2).*n)+ 0.3.*sin(2*pi*f(3).*n);

[C,L] = wavedec(x,4,'db4');

Long = length(L);

%Coeficientes de detalle o coeficientes wavelets

%Coefecicientes de escala o aproximaciones 