clc;
clear;
close all;

% Given N
N = 5;

% Time index
n = -2*N : 2*N;

% Rectangular (gate) signal
x = double(abs(n) <= N);

% Convolution of x[n] with itself
y = conv(x, x);

% New time index after convolution
ny = -4*N : 4*N;

% Plot original signal
figure;
subplot(2,1,1)
stem(n, x, 'filled', LineWidth= 1.0)
xlabel('n')
ylabel('x[n]')
title('Rectangular Signal x[n]')
grid on

% Plot convolution result
subplot(2,1,2)
stem(ny, y, 'filled', LineWidth= 1.0)
xlabel('n')
ylabel('y[n]')
title('Convolution y[n] = x[n] * x[n]')
grid on
