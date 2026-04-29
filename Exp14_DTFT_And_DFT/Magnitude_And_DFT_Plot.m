clc;
clear;
close all;

N = input('Enter value of N: ');

% Define input sequence
x = [2 3 -2 4];
% Zero padding
x = [x zeros(1, N - length(x))];

% Twiddle factor
W = exp(-1j*2*pi/N);

% DFT matrix
WN = zeros(N, N);

for k = 0:N-1
    for n = 0:N-1
        WN(k+1, n+1) = W^(k*n); 
    end
end

% DFT computation
X = WN * x.';

disp('DFT Result:');
disp(X);

% Plot
figure;
stem(0:N-1, abs(X), 'filled');
title(['Magnitude of ', num2str(N), '-Point DFT |X(k)|'], 'Interpreter', 'latex');
xlabel('$k$', 'Interpreter', 'latex');
ylabel('$|X(k)|$', 'Interpreter', 'latex');
legend('$|X(k)|$', 'Interpreter', 'latex');
grid on;