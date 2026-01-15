clc;
clear all;
close all;
%--------input Declaration--------%
x=input('Enter the input sequence: ');
h=input('Enter the impulse sequence: ');
L = length(x);
M = length(h);
y = zeros(1, L + M - 1);
for n = 0:(L + M - 2)
    for k = 0:(L - 1)
        if (n - k >= 0) && (n - k < M)
            y(n+1) = y(n+1) + x(k+1) * h(n-k+1);
        end
    end
end
disp(y);
%------- To plot input sequence-----------%
subplot(3,1,1); 
stem(x); 
title('Input sequence x(n)'); 
xlabel('n'); 
ylabel('x(n)');
%------- To plot impulse sequence-----------%
subplot (3,1,2); 
stem(h); 
title('Impulse sequence h(n)'); 
xlabel('n'); 
ylabel('h(n)'); 
%------- To plot output sequence-----------%
subplot(3,1,3); 
stem(y); 
title('Linear convolution  sequence y(n)'); 
xlabel('n'); 
ylabel('y(n)');	