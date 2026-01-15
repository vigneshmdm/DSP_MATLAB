clc;
close all;
clear all;

% -------------------------------
% Input sequence
% -------------------------------
xn = input('Enter the sequence x(n): ');
N = length(xn);

% -------------------------------
% Initialize DFT and IDFT arrays
% -------------------------------
Xk = zeros(1, N);     % DFT output
x_rec = zeros(1, N); % IDFT output

% -------------------------------
% DFT computation (manual)
% X(k) = sum x(n) * exp(-j*2*pi*k*n/N)
% -------------------------------
for k = 1:N
    for n = 1:N
        Xk(k) = Xk(k) + xn(n) * exp(-1i * 2 * pi * (k-1) * (n-1) / N);
    end
end

disp('DFT of the sequence X(k) = ');
disp(Xk);

% -------------------------------
% Plot input sequence
% -------------------------------
subplot(2,2,1);
stem(0:N-1, xn);
xlabel('n');
ylabel('x(n)');
title('Input Sequence');

% -------------------------------
% Magnitude spectrum
% -------------------------------
magnitude = abs(Xk);
subplot(2,2,2);
stem(0:N-1, magnitude);
xlabel('k');
ylabel('|X(k)|');
title('Magnitude Spectrum');

% -------------------------------
% Phase spectrum
% -------------------------------
phase = angle(Xk);
subplot(2,2,3);
stem(0:N-1, phase);
xlabel('k');
ylabel('\angle X(k)');
title('Phase Spectrum');

% -------------------------------
% IDFT computation (manual)
% x(n) = (1/N) * sum X(k) * exp(j*2*pi*k*n/N)
% -------------------------------
for n = 1:N
    for k = 1:N
        x_rec(n) = x_rec(n) + Xk(k) * exp(1i * 2 * pi * (k-1) * (n-1) / N);
    end
end
x_rec = x_rec / N;

disp('Reconstructed sequence using IDFT = ');
disp(x_rec);

% -------------------------------
% Plot IDFT output
% -------------------------------
subplot(2,2,4);
stem(0:N-1, real(x_rec));
xlabel('n');
ylabel('x(n)');
title('IDFT (Reconstructed Sequence)');