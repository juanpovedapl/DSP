b3=fir1(48,[0.35 0.65])

mag_H=abs(fft(b3,1024))
figure;
stem((0:2*pi/1024:2*pi-2*pi/1024),mag_H)