clc; clear; close all;
% Given sequences
x = [1 2 2 1];
h = [1 -1 -1 1];

% Length for linear convolution
L = length(x) + length(h) - 1;
nx = -2:1;
nh = -2:1;
ny = min(nx)+min(nh):max(nx)+max(nh);
x_pad = [x zeros(1, L - length(x))];
h_pad = [h zeros(1, L - length(h))];

% Circular convolution
y = cconv(x_pad, h_pad, L);

figure
% Subplot 1: Input Sequence x[n]
subplot(3, 1, 1);
stem(nx, x, 'filled', LineWidth= 1.0);
title('Input Sequence x[n]');
xlabel('n');
ylabel('Amplitude'); xlim([-5 3]); ylim([-2 2]);
grid on;


% Subplot 2: Impulse Response h[n]
subplot(3, 1, 2);
stem(nh, h, 'filled', LineWidth= 1.0);
title('Impulse Response h[n]');
xlabel('n');
ylabel('Amplitude'); xlim([-5 3]); ylim([-2 2]);
grid on;


% Subplot 3: Convolution Result y[n]
subplot(3, 1, 3);
stem(ny, y, 'filled', LineWidth= 1.0);
title('Convolution Result: y[n] = x[n] * h[n]');
xlabel('n');
ylabel('Amplitude'); xlim([-5 3]); ylim([-2 2]);
grid on;

disp('Linear convolution result:')
disp(round(y))