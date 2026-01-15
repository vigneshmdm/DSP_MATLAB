clc;
clear all;
close all;

x1 = input('Enter the sequence 1: ');
x2 = input('Enter the sequence 2: ');

N1 = length(x1);
N2 = length(x2);
N = max(N1, N2);

% Zero padding
x1 = [x1 zeros(1, N - N1)];
x2 = [x2 zeros(1, N - N2)];

% Initialize output
y = zeros(1, N);

% Circular convolution
for n = 0:N-1
    for k = 0:N-1
        index = mod(n - k, N);
        y(n+1) = y(n+1) + x1(k+1) * x2(index+1);
    end
end
disp(y);
% Plot sequence 1
subplot(3,1,1);
stem(0:N-1, x1);
title('Input sequence x1(n)');
xlabel('n');
ylabel('x1(n)');

% Plot sequence 2
subplot(3,1,2);
stem(0:N-1, x2);
title('Input sequence x2(n)');
xlabel('n');
ylabel('x2(n)');

% Plot output
subplot(3,1,3);
stem(0:N-1, y);
title('Circular convolution sequence y(n)');
xlabel('n');
ylabel('y(n)');
