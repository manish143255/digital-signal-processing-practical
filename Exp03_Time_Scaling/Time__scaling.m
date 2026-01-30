clc; clear; close all;

% Original signal
n = -4:4;
x = [2 -1 3 2 1 -2 3 3 -2];

% 2. Compression 
% This effectively keeps samples where 2n is integers within range.
x2 = interp1(n, x, 2*n, 'nearest', 0);
x3 = interp1(n, x, 3*n, 'nearest', 0);

% 3. Expansion (Zero Insertion / Upsampling)
L2 = 2;
n_exp2 = (L2 * min(n)) : (L2 * max(n)); 
x_n2 = zeros(1, length(n_exp2));
% 'ismember' finds indices in n_exp2 that match the stretched original times
x_n2(ismember(n_exp2, n * L2)) = x;

L3 = 3;
n_exp3 = (L3 * min(n)) : (L3 * max(n));
x_n3 = zeros(1, length(n_exp3));
x_n3(ismember(n_exp3, n * L3)) = x;

% 4. Plotting
figure

subplot(5,1,1)
stem(n, x, 'filled', 'LineWidth', 1)
title('Original x[n]')
grid on; axis tight; ylim([-3 4]); xlim([-12 12]);
xlabel('n'); ylabel('x[n]')

subplot(5,1,2)
stem(n, x2, 'filled', 'LineWidth', 1)
title('Time Compressed: x[2n] ')
grid on; axis tight; ylim([-3 4]); xlim([-12 12]);
xlabel('n'); ylabel('x[2n]')

subplot(5,1,3)
stem(n, x3, 'filled', 'LineWidth', 1)
title('Time Compressed: x[3n]')
grid on; axis tight; ylim([-3 4]); xlim([-12 12]);
xlabel('n'); ylabel('x[3n]')

subplot(5,1,4)
stem(n_exp2, x_n2, 'filled', 'LineWidth', 1)
title('Time Expanded: x[n/2]')
grid on; axis tight; ylim([-3 4]); xlim([-12 12]);
xlabel('n'); ylabel('x[n/2]')

subplot(5,1,5)
stem(n_exp3, x_n3, 'filled', 'LineWidth', 1)
title('Time Expanded: x[n/3]')
grid on; axis tight; ylim([-3 4]); xlim([-12 12]);
xlabel('n'); ylabel('x[n/3]')
