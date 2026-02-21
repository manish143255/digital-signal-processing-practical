% System: y(n) = 0.9y(n-1) + x(n)
b = [1];          % Numerator coefficient
a = [1, -0.9];    % Denominator coefficient 

% Calculate 1024 points over the full [0, 2*pi] range
[h, w] = freqz(b, a, 1024, 'whole');

% Shift the data to center it at zero frequency (Range: -pi to pi)
w_centered = w - pi;
h_centered = fftshift(h);

figure;
% Plot Magnitude |H(e^jw)|
subplot(2,1,1);
plot(w_centered, abs(h_centered), LineWidth =  1.5);
title('Magnitude Response $|H(e^{j\omega})|$', 'Interpreter', 'latex');
ylabel('$|H(e^{j\omega})|$','Interpreter', 'latex');
xlabel('$\omega$ (rad/sample)', 'Interpreter', 'latex');
grid on;

% Plot Phase angle H(e^jw)
subplot(2,1,2);
plot(w_centered, angle(h_centered), 'LineWidth', 1.5);
title('Phase Response $\angle H(e^{j\omega})$', 'Interpreter', 'latex');
ylabel('$\angle H(e^{j\omega})$ (rad)', 'Interpreter', 'latex');
xlabel('$\omega$ (rad/sample)', 'Interpreter', 'latex');
grid on;