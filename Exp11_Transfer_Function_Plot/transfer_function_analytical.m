clc;
clear;
close all;

% Frequency range
w = linspace(-pi, pi, 1000);

% Transfer function H(e^jw)
H = 1 ./ (1 - 0.8*exp(-1j*w));

% Magnitude and Phase
magH = abs(H);
phaseH = angle(H);

% ---- Plot Magnitude ----
figure;
subplot(2,1,1)
plot(w, magH, 'LineWidth', 1.5);
grid on;
title('Magnitude Response $|H(e^{j\omega})|$', 'Interpreter', 'latex');
ylabel('$|H(e^{j\omega})|$','Interpreter', 'latex');
xlabel('$\omega$ (radians)', 'Interpreter', 'latex');

% ---- Plot Phase ----
subplot(2,1,2)
plot(w, phaseH, 'LineWidth', 1.5);
title('Phase Response $\angle H(e^{j\omega})$', 'Interpreter', 'latex');
ylabel('$\angle H(e^{j\omega})$ (rad)', 'Interpreter', 'latex');
xlabel('$\omega$ (radians)', 'Interpreter', 'latex');
grid on;