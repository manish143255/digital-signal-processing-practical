clc; clear; close all;

n6 = -30:30;
x6 = cos(4*n6);

figure
stem(n6,x6,'filled')
title('x[n] = cos(4n)  (Aperiodic)')
xlabel('n'); ylabel('x[n]')
grid on
