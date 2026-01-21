# Digital Signal Processing Practical (MATLAB)

This repository contains MATLAB programs for DSP practical experiments for University of Delhi students.

# Experiments
1. Basic Discrete-Time Signals
2. Time Shifting
3. Time Scaling
4. Time Reversal
5. Addition of Signals
6. Subtraction of Signals
7. Multiplication of Signals
8. Periodic Signals
9. Aperiodic Signals

# 1. Basic Discrete-Time Signals

Theory:
A discrete-time signal is defined only at integer values of time n.
Common signals are unit impulse, unit step, ramp, exponential and sinusoidal.

delta = (n == 0);          % Unit impulse
u = (n >= 0);             % Unit step
r = n .* (n >= 0);        % Ramp
x = (0.8).^n .* (n >= 0); % Exponential

# 2. Time Shifting

Theory:
Time shifting delays or advances a signal.
Delay: x[n-k]
Advance: x[n+k]


# 3. Time Scaling

Theory:
Time scaling compresses or expands a signal.
Compression: x[2n]
Expansion: x[n/2]

# 4. Time Reversal

Theory:
Time reversal reflects the signal about n = 0.
y[n] = x[-n]

# 5. Addition of Signals

Theory:
y[n] = x1[n] + x2[n]

# 6. Subtraction of Signals

Theory:
y[n] = x1[n] - x2[n]

# 7. Multiplication of Signals

Theory:
y[n] = x1[n] · x2[n]

# 8. Periodic Signals

Theory:
A signal is periodic if x[n] = x[n+N]

# 9. Aperiodic Signals

Theory:
A signal that does not repeat after any finite interval is aperiodic.

## Software Used
- MATLAB R2025b

## Author
Manish Kumar
