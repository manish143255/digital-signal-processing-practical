clc; clear; close all;
N = input('Enter time range N (for -N to N):'); 
k= input('Enter shift value:');
n=-N:N; % time sequence 
u = (n >= 0);   % Unit step signal
u_left = (n + k >= 0); % left shift
u_right = (n - k >= 0); % right shift

figure
subplot(3,1,1)
stem(n, u, 'b', 'filled')
xlabel('n')
ylabel('u[n]')
legend('u[n]', Location= 'northwest')
title('Unit step function')
grid on
subplot(3,1,2)
stem(n, u_left, 'r', 'filled')
xlabel('n')
ylabel(['u[n-' num2str(k) ']'])
legend(['u[n+' num2str(k) ']'], Location='northwest')
title(['Unit step function left shifted by ' num2str(k) ' units '])
grid on
subplot(3,1,3)
stem(n, u_right, 'b', 'filled')
xlabel('n')
ylabel(['u[n+' num2str(k) ']'])
legend(['u[n-' num2str(k) ']'], Location='northwest')
title(['Unit step function right shifted by ' num2str(k) ' units '])
grid on

% ax1.Position(2) = ax1.Position(2) + 0.05; this is used to increase
% spacing between 2 subplots here ax=subplot(p,q,m)
% ax2.Position(2) = ax2.Position(2) - 0.05;