%Nicolas salamanca 2019
%Juan pablo poveda 
function [n,senal,magX,faX,omega]=magFase(cantidadCeros,cantiDadadunos)
    

    puntos =cantidadCeros+cantiDadadunos

    senal=[zeros(1,cantidadCeros) ones(1,cantiDadadunos)];
    X=fft(senal,puntos);
    faX = angle(X);
    magX= abs(X);
    n = 0:length(senal);
    omega= 0:(2*pi)/length(senal):2*pi-1;
end
