clc; clear; close all;

% 1) x[n] = cos(2π/3 n)   
N1 = 3; 
n1 = -4*N1 : 4*N1;
x1 = cos(2*pi/3 * n1);

figure
subplot(2,1,1)
stem(n1,x1,'filled')
title('x[n] = cos(2\pi/3 n),   N = 3')
xlabel('n'); ylabel('x[n]')
grid on

% 2) x[n] = sin(5π n)  
N2 = 2;
n2 = -6*N2 : 6*N2;
x2 = sin(5*pi*n2);

subplot(2,1,2)
stem(n2,round(x2),'filled')  % round = numerical error/noise
title('x[n] = sin(5\pi n),   N = 2')
xlabel('n'); ylabel('x[n]')
grid on

% 3) x[n] = sin(0.1π n)   
N3 = 20;
n3 = -3*N3 : 3*N3;
x3 = sin(0.1*pi*n3);
figure
subplot(2,1,1)
stem(n3,x3,'filled')
title('x[n] = sin(0.1\pi n),   N = 20')
xlabel('n'); ylabel('x[n]')
grid on

% 4) x[n] = e^(j3πn)   
N4 = 2;
n4 = -6*N4 : 6*N4;
x4 = real(exp(1j*3*pi*n4));   % real part

subplot(2,1,2)
stem(n4,x4,'filled')
title('x[n] = e^{j3\pi n},   N_0 = 2')
xlabel('n'); ylabel('Re\{x[n]\}')
grid on

% 5) x[n] = cos(π/3 n) + cos(3π/4 n)
% Periods: 6 and 8 = N0 = LCM(6,8) = 24

N5 = 24;
n5 = -2*N5 : 2*N5;
x5 = cos(pi/3*n5) + cos(3*pi/4*n5);

figure
stem(n5,x5,'filled')
title('x[n] = cos(\pi/3 n) + cos(3\pi/4 n),   N_0 = 24')
xlabel('n'); ylabel('x[n]')
grid on


