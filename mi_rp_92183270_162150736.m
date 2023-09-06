%By Juan Poveda Lopez and Daniel Perdomo Carvajal

function [n,senal]=magFase(possicionCero,cantidadCeros,longitudSenal,tipoSenal)
     
    norma=[];

    n=1-possicionCero:(cantidadCeros+longitudSenal)-possicionCero

    if (possicionCero>=0) && (possicionCero<=longitudSenal)
       switch(tipoSenal)
           case'p'
                senal=[zeros(1,cantidadCeros) ones(1,longitudSenal)];
           case'r'
                senal=[zeros(1,cantidadCeros) 1:longitudSenal];
           case 'normap'
                senal=[ flip(ones(1,longitudSenal-1)) 0 ones(1,longitudSenal)];
                
           case 'normar'
               senal=[ flip(1:longitudSenal-1) 0  1:longitudSenal];


       end

    end

     