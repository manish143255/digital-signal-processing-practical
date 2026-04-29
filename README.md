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

## 12. Steady-State Response of an LTI System

### Theory
The steady-state response of a Linear Time-Invariant (LTI) system is its long-term behavior after initial temporary fluctuations (transient response) have faded.

When an LTI system is driven by a sinusoidal input $x(n) = A\cos(\omega_0 n)u(n)$, the steady-state output $y_{ss}(n)$ will be a sinusoid of the **exact same frequency**, but its amplitude will be scaled and its phase will be shifted. These changes are determined by the system's frequency response evaluated at the input frequency $\omega_0$.

The mathematical relationship is:
$$y_{ss}(n) = A \cdot |H(e^{j\omega_0})| \cos(\omega_0 n + \angle H(e^{j\omega_0}))$$

For a system defined by the difference equation $y(n) = ay(n-1) + x(n)$, we first find the frequency response $H(e^{j\omega}) = \frac{1}{1 - a e^{-j\omega}}$, and then evaluate its magnitude and phase at $\omega_0$ to determine the final output waveform.

### Functions Used
- `freqz()` → computes the complex frequency response $H$ at a specific frequency point
- `abs()` → calculates the scaling factor (magnitude) applied to the input
- `angle()` → calculates the time delay (phase shift) applied to the input
- `cos()` → generates the steady-state sinusoidal output
- `stem()` → plots the discrete-time output sequence


---

## 13. Pole-Zero Plot and Stability Analysis

### Theory
The Z-transform is a mathematical tool used to analyze discrete-time systems. Applying the Z-transform to a difference equation yields the system's transfer function, $H(z)$.

$$H(z) = \frac{Y(z)}{X(z)} = \frac{\text{Numerator Polynomial}}{\text{Denominator Polynomial}}$$

This transfer function is characterized by two types of roots:
1. **Zeros:** Values of $z$ that make the numerator exactly zero, causing $H(z) = 0$. These represent frequencies the system blocks.
2. **Poles:** Values of $z$ that make the denominator exactly zero, causing $H(z)$ to approach infinity. These represent the natural resonances of the system.

A visual representation of these roots on the complex Z-plane is called a **Pole-Zero Plot**. This plot is critical for determining system stability. For a causal LTI system to be stable, all of its poles must lie strictly **inside the unit circle** ($|z| < 1$). If any pole is on or outside the unit circle, the system is unstable and will grow out of control.

### Functions Used
- `roots()` → mathematically calculates the zeros (numerator roots) and poles (denominator roots)
- `zplane()` → automatically calculates roots from system coefficients and plots them on the complex Z-plane alongside the unit circle


---

## 14. Discrete Fourier Transform (DFT) and Zero-Padding

### Theory
The **Discrete-Time Fourier Transform (DTFT)** provides a continuous frequency spectrum of a discrete-time signal. However, computers cannot process continuous functions. To analyze signals digitally, we use the **Discrete Fourier Transform (DFT)**, which calculates the frequency spectrum at a finite number of discrete, equally spaced frequency points. 

Mathematically, an $N$-point DFT takes $N$ samples of the continuous DTFT from $0$ to $2\pi$. 

**Zero-Padding** is the process of appending zeros to the end of a time-domain sequence before computing the DFT. 
* **What it does NOT do:** Zero-padding does not add new information to the signal, nor does it increase the actual frequency resolution (the ability to distinguish between two closely spaced frequencies).
* **What it DOES do:** Zero-padding increases the number of points calculated by the DFT. This acts as a mathematical **interpolator**. By calculating more points, the discrete DFT plot "fills in" the gaps, allowing us to see a smoother, more detailed curve that closely matches the true, continuous shape of the DTFT.

In this experiment, we take a 4-point rectangular sequence and compute its 4-point, 8-point, and 16-point DFTs. As we append more zeros, we observe the discrete stems trace out the familiar "sinc" wave envelope of the underlying DTFT.

### Functions Used
- `fft()` → computes the Fast Fourier Transform (an efficient algorithm for DFT). The second argument defines the $N$-point size, automatically zero-padding if $N$ is larger than the sequence or you can calculate analytically which I have calculated in code.
- `abs()` → computes the magnitude of the complex DFT output.
- `linspace()` → generates linearly spaced vectors for the frequency axis.
- `plot()` → draws the continuous DTFT approximation.
- `stem()` → draws the discrete samples of the DFT.
- `subplot()` → arranges multiple plots in a grid.

## Software Used
- MATLAB R2025b

## Author
Manish Kumar
