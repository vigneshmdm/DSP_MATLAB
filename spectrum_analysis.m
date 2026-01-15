clc;
clear all;
close all;

% -----------------------------
% Parameters
% -----------------------------
N  = 256;        % Number of samples
fs = 8000;       % Sampling frequency (Hz)
f1 = 1000;       % First sine frequency (Hz)
f2 = 2000;       % Second sine frequency (Hz)

% -----------------------------
% Sample index and time axis
% -----------------------------
n = 0:N-1;
t = n/fs;        % Time in seconds

% -----------------------------
% Generate signal (two sinusoids)
% -----------------------------
x = sin(2*pi*f1*t) + sin(2*pi*f2*t);

% -----------------------------
% FFT computation
% -----------------------------
X = fft(x);
magX = abs(X);

% -----------------------------
% Frequency axis (only 0 to fs/2)
% -----------------------------
f = (0:N/2-1)*(fs/N);

% -----------------------------
% Plot time-domain signal
% -----------------------------
figure;

subplot(3,1,1);
plot(t, x);
grid on;
title('Time Domain Signal (1 kHz + 2 kHz)');
xlabel('Time (seconds)');
ylabel('Amplitude');

% -----------------------------
% Plot magnitude spectrum (linear)
% -----------------------------
subplot(3,1,2);
plot(f, magX(1:N/2));
grid on;
title('Magnitude Spectrum (Linear Scale)');
xlabel('Frequency (Hz)');
ylabel('|X(f)|');

% -----------------------------
% Plot magnitude spectrum (dB)
% -----------------------------
subplot(3,1,3);
plot(f, 20*log10(magX(1:N/2)));
grid on;
title('Magnitude Spectrum (dB Scale)');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');