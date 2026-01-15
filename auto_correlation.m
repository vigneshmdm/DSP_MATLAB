clc;
clear all;
close all;
x=input('Enter the sequence')
Rxx=xcorr(x); % Estimate its autocorrelation
disp(Rxx);
N=length(Rxx);
m=(N-1)/2;
l=-m:m;
subplot(2,1,1)
stem(x); % Plot the autocorrelation
title('Input Sequence x(n)');
xlabel('n');
ylabel('x(n)');
subplot(2,1,2); % Prepare the figure
stem(l,Rxx); % Plot the autocorrelation
title('Autocorrelation function of the Sequence Rxx(l)');
xlabel('l');
ylabel('Rxx(l)');