clc;
clear all;
close all;
%-----------By using inbuilt functions--------
f=100; fs=1000; N=81;
wc=2*pi*f/fs;
m=(N-1)/2;
h1=fir1(N-1,wc/pi,'high',hamming(N)); % By using Inbuilt
%------------------Without Inbuilt---------------------
hwind= 0.54-(0.46.*cos(2*pi.*[0:N-1]/(N-1)));
k=-m:-1;
d1=-sin(wc.*k)./(pi.*k);
k2=1:m;
d2=-sin(wc.*k2)./(pi.*k2);
ideal=[d1 1-wc/pi d2];
imp=hwind.*ideal;
subplot(2,1,1);
plot(h1,'-r');
hold on;
plot(imp,'-.b');
legend('inbuilt','without inbuilt')
xlabel('samples');
ylabel('amplitude');
title('impulse response');
Nf=128;
L=length(imp);
freq=abs(fft(imp,N))/L;
findex=(fs/2)*linspace(0,1,(N/2)+1);
subplot(2,1,2);
plot(findex,freq(1:(N/2)+1));
xlabel('frequency');
ylabel('amplitude');
title('frequency response');