f = load("ECG2.txt");
[c,load] =wavedec (f,3,'db2');%Descomposicion de la seña en 3 niveeles

approx = appcoef(c,l,'db2'); %coeficientes de aprox (F.B)
[cd1,cd2,cd3] = detcoef (c,l,[1,2,3]); % Coeficiente de detalle (FA)

subplot (5,1,1)
plot(f)
title('Señal Original')


subplot (5,1,2)
plot(f)
title('Coeficientes de aproximacion')


subplot (5,1,3)
plot(f)
title('Coeficiente de detalle -Nivel 1')

subplot (5,1,4)
plot(f)
title('Coeficientes de detalle - Nivel 2')


subplot (5,1,5)
plot(f)
title('Coeficientes de detalle - Nivel 2')
