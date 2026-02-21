% System Coefficients
b = [1];          % Coefficients of x(n)
a = [1, -0.8];    % Coefficients of y(n)

% Calculate Frequency Response
[h, w] = freqz(b, a, 512, 'whole');  % w and h is from 0 to pi and using 'whole' it is 0 to 2 pi
h = fftshift(h);
w = w-pi;
% Plotting
subplot(2,1,1);              % Top plot for Magnitude
plot(w, abs(h), LineWidth= 1.5);
title('Magnitude Response $|H(e^{j\omega})|$', 'Interpreter', 'latex');
ylabel('$|H(e^{j\omega})|$','Interpreter', 'latex');
xlabel('$\omega$ (radians)', 'Interpreter', 'latex');
grid on;

subplot(2,1,2);              % Bottom plot for Phase
plot(w, angle(h), LineWidth= 1.5);
title('Phase Response $\angle H(e^{j\omega})$', 'Interpreter', 'latex');
ylabel('$\angle H(e^{j\omega})$ (rad)', 'Interpreter', 'latex');
xlabel('$\omega$ (radians)', 'Interpreter', 'latex');
grid on;
