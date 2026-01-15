clc;
clear all;
close all;
wp=[0.2 0.7]; % butter worth BPF
ws=[0.1 0.8];
rp=1; rs=50;
[n,wn]=buttord(wp,ws,rp,rs); 
[b,a]=butter(n,wn);
[h,w]=freqz(b,a,128);
plot(abs(h));
xlabel('frequency');
ylabel('Magnitude (db)');
title('BPF butterworth filter response');