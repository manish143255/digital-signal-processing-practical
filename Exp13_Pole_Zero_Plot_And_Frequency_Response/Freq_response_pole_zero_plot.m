% Causal System y(n) = 0.9y(n-1) + x(n)
% System Coefficients
b = [1];       % Coefficients of x(n)
a = [1, -0.9]; % Coefficients of y(n)

figure
% (a) Sketch Pole-Zero plot
[hz,hp,hl] = zplane(b, a);
set(hl, 'LineWidth', 1.7, 'MarkerSize', 10);
title('Pole-Zero Plot', 'Interpreter', 'latex');
grid on;

% (b) Calculate Frequency Response 
[h, w] = freqz(b, a, 512, 'whole');  
h = fftshift(h);
w = w - pi;

% Plotting Magnitude Response
figure 
subplot(211)           
plot(w, abs(h), 'LineWidth', 1.5);
title('Magnitude Response $|H(e^{j\omega})|$', 'Interpreter', 'latex');
ylabel('$|H(e^{j\omega})|$', 'Interpreter', 'latex');
xlabel('$\omega$ (radians)', 'Interpreter', 'latex');
grid on;

% Plotting Phase Response
subplot(212)             
plot(w, angle(h), 'LineWidth', 1.5);
title('Phase Response $\angle H(e^{j\omega})$', 'Interpreter', 'latex');
ylabel('$\angle H(e^{j\omega})$ (rad)', 'Interpreter', 'latex');
xlabel('$\omega$ (radians)', 'Interpreter', 'latex');
grid on;

