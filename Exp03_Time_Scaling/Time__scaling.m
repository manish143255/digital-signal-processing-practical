clc; clear; close all;

% Time range
N = input('Enter time range N (for -N to N): ');
n = -N:N;

% Choose base signal
disp('Choose a signal:');
disp('1. Unit Step');
disp('2. Unit Impulse');
disp('3. Ramp');
disp('4. Exponential');

choice = input('Enter your choice (1-4): ');

switch choice
    case 1
        x = double(n >= 0);                     % Unit step
        name = 'Unit Step u[n]';
        
    case 2
        x = double(n == 0);                    % Unit impulse
        name = 'Unit Impulse \delta[n]';
        
    case 3
        x = n .* (n >= 0);               % Ramp
        name = 'Ramp r[n]';
        
    case 4
        a = input('Enter exponential base a: ');
        x = a.^n;                       % Exponential
        name = ['Exponential x[n] = ' num2str(a) '^n'];
end

x2  = interp1(n,x,2*n,'nearest',0);     % x[2n]  (compressed)
x3  = interp1(n,x,3*n,'nearest',0);     % x[3n]  (more compressed)
xn2 = interp1(n,x,n/2,'nearest',0);     % x[n/2] (expanded)
xn3 = interp1(n,x,n/3,'nearest',0);     % x[n/3] (more expanded)

figure

subplot(5,1,1)
stem(n,x,'r', 'filled')
title(['Original: ' name])
xlabel('n'); ylabel('x[n]')
legend('x[n]',Location= 'northwest')
grid on

subplot(5,1,2)
stem(n,x2,'b','filled')
title('Time Compressed: x[2n]')
xlabel('n'); ylabel('x[2n]')
legend('x[2n]',Location= 'northwest')
grid on

subplot(5,1,3)
stem(n,x3,'r','filled')
title('Time Compressed: x[3n]')
xlabel('n'); ylabel('x[3n]')
legend('x[3n]',Location= 'northwest')
grid on

subplot(5,1,4)
stem(n,xn2,'b', 'filled')
title('Time Expanded: x[n/2]')
xlabel('n'); ylabel('x[n/2]')
legend('x[n/2]',Location= 'northwest')
grid on

subplot(5,1,5)
stem(n,xn3,'r','filled')
title('Time Expanded: x[n/3]')
xlabel('n'); ylabel('x[n/3]')
legend('x[n/3]',Location= 'northwest')
grid on
