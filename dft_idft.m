clc;
clear all;
close all;

% Input sequence
x = input('Enter the sequence x(n): ');

% ------------------ DFT ------------------
X = fft(x);
disp(X);

% Magnitude and Phase
magX = abs(X);
phaseX = angle(X);

% ------------------ IDFT ------------------
x_rec = ifft(X);

% ------------------ Plots ------------------
subplot(2,2,1);
stem(x);
title('Input Sequence x(n)');
xlabel('n');
ylabel('x(n)');

subplot(2,2,2);
stem(magX);
title('Magnitude Spectrum |X(k)|');
xlabel('k');
ylabel('|X(k)|');

subplot(2,2,3);
stem(phaseX);
title('Phase Spectrum ∠X(k)');
xlabel('k');
ylabel('∠X(k)');

subplot(2,2,4);
stem(x_rec);
title('Reconstructed Signal using IDFT');
xlabel('n');
ylabel('x(n)');