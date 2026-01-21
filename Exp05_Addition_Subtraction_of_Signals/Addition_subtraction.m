clc; clear; close all;

% Time range
N = input('Enter time range N (for -N to N):')
n = -N:N;

u = double(n >= 0);           % Unit step u[n]
u1 = double(n-1 >= 0);       % u[n-1]

r = n .* (n >= 0);           % Ramp r[n]
r1 = (n+1) .* (n+1 >= 0);    % r[n+1]

u_sub = u - u1;              % u[n] - u[n-1]
r_add = r + r1;              % r[n] + r[n+1]
r_sub = r1 - r;              % r[n+1] - r[n]  

figure
subplot(3,1,1)
stem(n, u, 'filled')
title('Unit Step u[n]')
xlabel('n'); ylabel('u[n]')
legend('u[n]', Location= 'northwest')
grid on

subplot(3,1,2)
stem(n, u1, 'filled')
title('Shifted Unit Step u[n-1]')
xlabel('n'); ylabel('u[n-1]')
legend('u[n-1]',Location= 'northwest')
grid on

subplot(3,1,3)
stem(n, u_sub, 'filled')
title('Subtraction: u[n] - u[n-1]')
xlabel('n'); ylabel('u[n]-u[n-1]')
legend('u[n]-u[n-1]',Location= 'northwest')
grid on

figure
subplot(4,1,1)
stem(n, r, 'filled')
title('Ramp r[n]')
xlabel('n'); ylabel('r[n]')
legend('r[n]',Location= 'northwest')
grid on

subplot(4,1,2)
stem(n, r1, 'filled')
title('Shifted Ramp r[n+1]')
xlabel('n'); ylabel('r[n+1]')
legend('r[n+1]',Location= 'northwest')
grid on

subplot(4,1,3)
stem(n, r_add, 'filled')
title('Addition: r[n] + r[n+1]')
xlabel('n'); ylabel('r[n]+r[n+1]')
legend('r[n]+r[n+1]',Location= 'northwest')
grid on

subplot(4,1,4)
stem(n, r_sub, 'filled')
title('Subtraction: r[n+1] - r[n]')
xlabel('n'); ylabel('r[n+1]-r[n]')
legend('r[n+1]-r[n]',Location= 'northwest')
grid on
