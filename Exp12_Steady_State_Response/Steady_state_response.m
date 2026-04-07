% LTI System y(n) = 0.8y(n-1) + x(n)
% (a) H(e^jw) is analytically 1 / (1 - 0.8*exp(-j*w)) as freqz takes
% integer and here omega has 0.5 pi
% (b) Calculate and plot steady state response to x(n) = cos(0.5*pi*n)u(n)

% Define discrete time vector and input frequency
n = -10:30;
w0 = 0.5 * pi;

% Calculate system frequency response specifically at w0 = 0.5*pi
H_w0 = 1 / (1 - 0.8 * exp(-1j * w0));
mag_H = abs(H_w0);
phase_H = angle(H_w0);

% Steady state response
% y_ss(n) = |H(w0)| * cos(w0*n + phase(H(w0)))
x_input = cos(w0 * n) .* (n >= 0);
y_ss = mag_H * cos(w0 * n + phase_H) .* (n>=0);  % unit step apply

% Plot the steady state response
figure
subplot(211)
stem(n, x_input, 'filled', 'LineWidth', 1.5);
title('Steady State Response to $x(n) = \cos(0.5\pi n)u(n)$', 'Interpreter', 'latex');
xlabel('$n$', 'Interpreter', 'latex');
ylabel('$x(n)$', 'Interpreter', 'latex');
ylim([-1.2,1.2])
grid on;

subplot(212)
stem(n, y_ss, 'filled', 'LineWidth', 1.5);
title('Steady State Response output for $\cos(0.5\pi n)u(n)$', 'Interpreter', 'latex');
xlabel('$n$', 'Interpreter', 'latex');
ylabel('$y_{ss}(n)$', 'Interpreter', 'latex');
ylim([-0.8,0.8])
grid on;

