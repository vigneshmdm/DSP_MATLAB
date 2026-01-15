clc;
clear all;
close all;
x=input('Enter the input sequence: ');
h=input('Enter the impulse sequence: ');
N = max(length(x), length(h));
y=cconv(x,h,N);     %  "conv" inbuilt command used for convolution operation
disp(y);
%------- To plot input sequence-----------%
subplot(3,1,1); 
stem(x); 
title('Input sequence x(n)'); 
xlabel('n')
ylabel('x(n)')
%------- To plot impulse sequence-----------%
subplot(3,1,2); 
stem(h); 
title('Impulse sequence h(n)'); 
xlabel('n'); 
ylabel('h(n)'); 
%------- To plot output sequence-----------%
subplot(3,1,3); 
stem(y); 
title('Circular convolution  sequence y(n)'); 
xlabel('n'); 
ylabel('y(n)');