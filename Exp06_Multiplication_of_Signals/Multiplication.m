clc; clear; close all;

% Time range
N = input('Enter time range N (for -N to N): ');
n = -N:N;

% Unit step signals
u      = double(n >= 0);        % u[n]
u_rev  = double(-n-1 >= 0);     % u[-n-1]

% (a) 2^n u[n] and 2^n u[-n-1]
x1 = (2.^n) .* u;              % 2^n u[n]
x2 = (2.^n) .* u_rev;          % 2^n u[-n-1]

figure
subplot(2,1,1)
stem(n, x1, 'filled')
title('Right-sided growing exponential')
xlabel('n'); ylabel('2^n u[n]')
legend('2^n u[n]', Location= 'northwest')
grid on

subplot(2,1,2)
stem(n, x2, 'filled')
title('Left-sided growing exponential')
xlabel('n'); ylabel('2^n u[-n-1]')
legend('2^n u[-n-1]', Location= 'northwest')
grid on

%(b) (1/3)^n u[n] and (1/3)^n u[-n-1]
x3 = ((1/3).^n) .* u;          % (1/3)^n u[n]
x4 = ((1/3).^n) .* u_rev;      % (1/3)^n u[-n-1]

figure
subplot(2,1,1)
stem(n, x3, 'filled')
title('Right-sided decaying exponential')
xlabel('n'); ylabel('(1/3)^n u[n]')
legend('(1/3)^n u[n]', Location= 'northwest')
grid on

subplot(2,1,2)
stem(n, x4, 'filled')
title('Left-sided decaying exponential')
xlabel('n'); ylabel('(1/3)^n u[-n-1]')
legend('(1/3)^n u[-n-1]', Location= 'northeast')
grid on
