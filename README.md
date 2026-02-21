## Digital Signal Processing Practical (MATLAB)

This repository contains MATLAB programs for DSP practical experiments for University of Delhi students.

## Experiments
1. Basic Discrete-Time Signals
2. Time Shifting
3. Time Scaling
4. Time Reversal
5. Addition and Subtraction of Signals
6. Multiplication of Signals
7. Periodic Signals
8. Aperiodic Signals
9. Convolution Sum of Gate (Rectangular) Function
10. Linear Convolution Using Circular Convolution

## Digital Signal Processing Practicals — Theory & Functions Used

---

## 1. Basic Discrete-Time Signals

### Theory  
A discrete-time signal is a sequence of numbers defined only at integer values of time.  
Common discrete-time signals are:
- Unit impulse: $\delta[n] = 1$ for $n=0$, else $0$
- Unit step: $u[n] = 1$ for $n \geq 0$, else $0$
- Ramp: $r[n] = n \cdot u[n]$
- Exponential: $x[n] = a^n u[n]$
- Sinusoidal: $x[n] = \sin(\omega n)$

These signals are basic building blocks in digital signal processing.

### Functions Used
- `stem()` → used to plot discrete-time signals  
- `xlabel()` → label x-axis  
- `ylabel()` → label y-axis  
- `title()` → give title to graph  
- `grid on` → show grid  

---

## 2. Time Shifting

### Theory  
Time shifting moves a signal left or right on the time axis.  
- Delay: $y[n] = x[n - k]$ (shifts the signal right by $k$ samples)
- Advance: $y[n] = x[n + k]$ (shifts the signal left by $k$ samples)

It does not change the shape of the signal, only its position.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 3. Time Scaling

### Theory  
Time scaling compresses or expands a signal.  
- Compression: $y[n] = x[Mn]$ where $M > 1$ → faster signal  
- Expansion: $y[n] = x[n/L]$ where $L > 1$ → slower signal  

This changes the time axis but not the amplitude.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 4. Time Reversal

### Theory  
Time reversal flips a signal about $n = 0$ axis.
$$y[n] = x[-n]$$

It is also called folding of a signal.

### Functions Used
- `fliplr()` → reverses the signal sequence  
- `stem()`  
- `title()`  
- `grid on`  

---

## 5. Addition and Subtraction of Signals

### Theory  
Addition combines two signals sample by sample.  
$y[n] = x_1[n] + x_2[n]$
Used in mixing and superposition of signals.

Subtraction gives the difference between two signals. 
$y[n] = x_1[n] - x_2[n]$
Used in noise cancellation and error signals.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 6. Multiplication of Signals

### Theory  
Multiplication combines two signals sample by sample.  
$$y[n] = x_1[n] \cdot x_2[n]$$

Used in modulation and windowing.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 7. Periodic Signals

### Theory  
A signal is periodic if it repeats after a fixed interval $N$.  
$$x[n] = x[n + N]$$

$N$ is called the fundamental period.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 8. Aperiodic Signals

### Theory  
A  signal  that does not satisfy the  condition  $x[n] = x[n + N]$  for  any  finite  integer  $N$  is  called  aperiodic  or  non-periodic.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 9. Convolution Sum of Gate (Rectangular) Function

### Theory
Convolution is a fundamental operation in Digital Signal Processing used to determine the output of a Linear Time-Invariant (LTI) system for a given input.

For discrete-time signals, convolution is defined as:

$$y[n] = \sum_{k=-\infty}^{\infty} x[k] \cdot h[n - k]$$

In this experiment, the signal is a rectangular (gate) function defined as:

$$x[n] = \begin{cases} 1, & -N \leq n \leq N \\ 0, & \text{otherwise} \end{cases}$$

When a rectangular signal is convolved with itself, the output is a triangular signal.
This happens because the amount of overlap between the two rectangular signals
increases linearly, reaches a maximum, and then decreases linearly.

This experiment verifies the theoretical triangular shape of convolution
using MATLAB simulation.

### Physical Significance
- Used to analyze LTI system response
- Models finite-duration pulses
- Important in pulse shaping and signal smoothing

### Functions Used
- `conv()`      → computes linear convolution
- `stem()`      → plots discrete-time signals
- `xlabel()`    → label x-axis
- `ylabel()`    → label y-axis
- `title()`     → graph title
- `grid on`     → enable grid

---

## 10. Linear Convolution Using Circular Convolution

### Theory
Circular convolution is defined for finite-length sequences and assumes
the signals are periodic.

The circular convolution is given by:

$$y[n] = \sum_{k=0}^{N-1} x[k] \cdot h[(n - k) \pmod N]$$

Linear convolution can be computed using circular convolution by applying
zero padding to both sequences.

Steps:
1. Let x[n] be of length M and h[n] be of length N
2. Required length $$L \geq M + N - 1$$
3. Zero-pad both sequences to length L
4. Perform circular convolution
5. The result matches linear convolution

### Physical Significance
- Used in fast convolution algorithms
- Essential in digital filtering
- Links time-domain and frequency-domain analysis

### Functions Used
- `cconv()`     → circular convolution
- `conv()`      → linear convolution (verification)
- `zeros()`     → zero padding
- `length()`   → sequence length
- `stem()`      → plot output

---

## 11. Frequency Response of a First-Order System

### Theory  
The frequency response shows how a system changes the strength (amplitude) and timing (phase) of a signal at different frequencies. For the given system $y(n) = 0.9y(n-1) + x(n)$, the response at any frequency $\omega$ is a complex number:

$$H(e^{j\omega}) = \text{Real Part} + j(\text{Imaginary Part})$$

From this complex number, we calculate two key values:
1. **Magnitude (Mod):** 
			$|H| = \sqrt{\text{Real}^2 + \text{Imaginary}^2}$.   It shows the gain.

2. **Phase:** $\angle H = \tan^{-1}(\text{Imaginary} / \text{Real})$. It shows the shift.

In this experiment, we observe that the magnitude is highest at $\omega = 0$. This means the system is a **Low-Pass Filter**, which allows slow-changing signals to pass through easily while blocking high-speed fluctuations.

### Functions Used
- `freqz()` → computes the complex frequency response $H$ for different $\omega$ : default value ($0$ to $\pi$).
- `abs()` → finds the magnitude (modulus) of the complex number.
- `angle()` → finds the phase (angle) of the complex number.
- `fftshift()` → centers the plot at zero frequency ($-\pi$ to $\pi$).
- `subplot()` → divides the figure into two parts for Magnitude and Phase.
- `Interpreter`, `latex` → renders mathematical symbols like $\omega$ and $\angle$ in the plots.

## Software Used
- MATLAB R2025b

## Author
Manish Kumar
