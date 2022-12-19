function[escalon]=my_escalon(m,Amplitud,desplazamiento)
    n=(-m:m);
    %instantes de muestreo
    ramp(1:m-desplazamiento)= 0;
    % parte negativa
    ramp(m+1-desplazamiento:2*m+1)=1;
    %parte positiva
    escalon= Amplitud.*ramp;
    stem(n,escalon);
    title( strcat('Generacion de la Señal escalon -- A= ', num2str(Amplitud) ));
    xlabel ('Instantes n');
    ylabel ('Señal Escalon');
end
