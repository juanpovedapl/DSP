function [rampa,lineal,tiempo]=mi_rampa(m, ti, tf, kd, ts);
tiempo=ti:ts:tf;
td=kd*ts;
lineal=m*tiempo-m*td;
rampa=[zeros(1,td-ti) lineal(td-ti+1:length(tiempo))];