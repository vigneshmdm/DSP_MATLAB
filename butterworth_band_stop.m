clc;
clear all;
close all;
wp=[0.1 0.8]; % butter worth BSF
ws=[0.2 0.7];
rp=1; rs=50;
[n,wn]=buttord(wp,ws,rp,rs); 
[b,a]=butter(n,wn,'stop');
[h,w]=freqz(b,a,128);
plot(abs(h));
xlabel('frequency');
ylabel('Magnitude (db)');
title('BSF butterworth filter response');