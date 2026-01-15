wp=0.7; %%% chebyshev high pass filter 
ws=0.5;
rp=1; rs=30;
[n,wn]=cheb1ord(wp,ws,rp,rs);
[b,a]=cheby1(n,rp,wn, 'high');
[h,w]=freqz(b,a,128);
plot(abs(h));
xlabel('frequency');
ylabel('amplitude');
title('high pass chebyshev filter response');