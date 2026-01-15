clc;
clear all;
close all;
wp=0.2; % butter worth HPF
ws=0.1;
rp=1; rs=50;
[n,wn]=buttord(wp,ws,rp,rs); 
[b,a]=butter(n,wn,'high');
[h,w]=freqz(b,a,128);
plot(abs(h));
xlabel('frequency');
ylabel('Magnitude (db)');
title('HPF butterworth filter response');