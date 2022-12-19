% se inicializa el vector en el que se evaluaran dos
% ciclos, uno que es el correspondiente a la frecuencia discreta
% y el segundo que corresponde a los elementos de la senal
x1=zeros(1,15)
for k=1:7
    for n=1:15
    % se evaluan los coeficientes ak y la senal para cada componente espectral
    ak=(1/7)*(sin(5*pi*k/7)/sin(pi*k/7));
    x(n)=ak*exp(((n-1)-2)*j*2*pi*k/7)
    end
    % se suman los resultados para cada componente espectral y se grafica x[n]
    x1=x1+x;
    if k<7
    subplot(4,2,k), stem(real(x1));
    title("Armonicol " + k)
    else
    subplot(4,2,[7,8]),stem(real(x1));
    title("Suma de los " + k + " armonicos")
    end
end
