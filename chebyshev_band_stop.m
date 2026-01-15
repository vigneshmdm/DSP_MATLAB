wp=[0.1 0.8]; %%% chebyshev BSF
ws=[0.2 0.7];
rp=1; rs=30;
[n,wn]=cheb1ord(wp,ws,rp,rs);
[b,a]=cheby1(n,rp,wn,'stop');
[h,w]=freqz(b,a,128);
plot(abs(h));
xlabel('frequency');
ylabel('Magnitude (db)');
title('BSF chebyshev filter response');