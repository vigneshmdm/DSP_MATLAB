wp=[0.1]; % butter worth LPF
ws=[0.2];
rp=1; rs=50;
[n,wn]=buttord(wp,ws,rp,rs); 
[b,a]=butter(n,wn);
[h,w]=freqz(b,a,128);
plot(abs(h));
xlabel('frequency');
ylabel('Magnitude');
title('LPF butterworth filter response');