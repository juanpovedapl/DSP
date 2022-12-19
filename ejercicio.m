tao=10;
t=0:1:2*tao-1;
A=1;

x=exp(-t/tao);
stem(t,x);
figure;

x=exp(-t/(2*tao));
stem(t,x);
figure;

g=exp(-(t+tao)/(2*tao));
stem(t,g);
figure;

z=[g -A*g];
t=0:1:39;
stem(t,z);
figure;

%Segunda forma sumando señales.
z=[A*g zeros(1,20)]+[zeros(1,20) -A*g];
stem(t,z);
figure;

%Tercera Forma con desplazamiento. Ojo usted lo hizo.
t1=0:1:2*tao-1;
desplazada=-A*exp(-(t1+3*tao)/(2*tao));
z=[A*g zeros(1,20)]+[zeros(1,20) desplazada];
stem(t,z);
figure;




