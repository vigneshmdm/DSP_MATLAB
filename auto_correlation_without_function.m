clc;
clear all;
close all;

x = input('Enter the sequence: ');
L = length(x);

% Lag range
lags = -(L-1):(L-1);

% Initialize autocorrelation output
Rxx = zeros(1, length(lags));

% Manual autocorrelation
for i = 1:length(lags)
    l = lags(i);
    sum_val = 0;

    for n = 1:L
        if (n-l >= 1) && (n-l <= L)
            sum_val = sum_val + x(n) * x(n-l);
        end
    end
    Rxx(i) = sum_val;
end
disp(Rxx);
% Plot input
subplot(2,1,1);
stem(x);
title('Input Sequence x(n)');
xlabel('n');
ylabel('x(n)');

% Plot autocorrelation
subplot(2,1,2);
stem(lags, Rxx);
title('Autocorrelation R_{xx}(l)');
xlabel('l');
ylabel('R_{xx}(l)');