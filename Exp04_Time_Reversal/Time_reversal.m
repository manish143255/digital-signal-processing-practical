clc; clear; close all;

% User input: sequence values and zero index
x = input('Enter sequence x[n] as a vector (e.g. [1 -2 3 -1 2 -3 1]): ');
zero_index = input('Enter position of n = 0 (index in vector): ');

L = length(x);
n = 1:L;
n = n - zero_index;     

% Time reversal
x_rev = fliplr(x);
n_rev = -fliplr(n);

figure
subplot(2,1,1)
stem(n, x, 'b','filled')
xlabel('n'); ylabel('x[n]')
title('Original Sequence x[n]')
legend('x[n]', Location='northwest')
grid on

subplot(2,1,2)
stem(n_rev, x_rev, 'r','filled')
xlabel('n'); ylabel('x[-n]')
title('Time Reversed Sequence x[-n]')
legend('x[-n]', Location='northwest')
grid on
