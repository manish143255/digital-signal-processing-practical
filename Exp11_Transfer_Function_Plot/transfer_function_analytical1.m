clc; clear; close all;

% System Coefficients for 0.9
b = [1];
a = [1, -0.9];
N = 1024;

% Calculate Frequency Response
[h, w] = freqz(b, a, N, 'whole');
w_centered = w - pi; 
h_centered = fftshift(h);

figure;
% Magnitude Response
subplot(2,1,1);
plot(w_centered, abs(h_centered), 'LineWidth', 1.5);
title('Magnitude Response $|H(e^{j\omega})|$', 'Interpreter', 'latex');
ylabel('$|H(e^{j\omega})|$','Interpreter', 'latex');
xlabel('$\omega$ (radians)', 'Interpreter', 'latex');
grid on; 

% Phase Response
subplot(2,1,2);
plot(w_centered, angle(h_centered), 'LineWidth', 1.5);
title('Phase Response $\angle H(e^{j\omega})$', 'Interpreter', 'latex');
ylabel('$\angle H(e^{j\omega})$ (rad)', 'Interpreter', 'latex');
xlabel('$\omega$ (rad/sample)', 'Interpreter', 'latex');
grid on; 