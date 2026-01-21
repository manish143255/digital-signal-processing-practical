## Digital Signal Processing Practical (MATLAB)

This repository contains MATLAB programs for DSP practical experiments for University of Delhi students.

## Experiments
1. Basic Discrete-Time Signals
2. Time Shifting
3. Time Scaling
4. Time Reversal
5. Addition of Signals
6. Subtraction of Signals
7. Multiplication of Signals
8. Periodic Signals
9. Aperiodic Signals

## Digital Signal Processing Practicals — Theory & Functions Used

---

## 1. Basic Discrete-Time Signals

### Theory  
A discrete-time signal is a sequence of numbers defined only at integer values of time.  
Common discrete-time signals are:
- Unit impulse: δ[n]
- Unit step: u[n]
- Ramp: r[n]
- Exponential: aⁿu[n]
- Sinusoidal: sin(ωn)

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
- Delay: x[n − k] (shift right)  
- Advance: x[n + k] (shift left)

It does not change the shape of the signal, only its position.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 3. Time Scaling

### Theory  
Time scaling compresses or expands a signal.  
- Compression: x[2n] → faster signal  
- Expansion: x[n/2] → slower signal  

This changes the time axis but not the amplitude.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 4. Time Reversal

### Theory  
Time reversal flips a signal about n = 0.  
y[n] = x[−n]

It is also called folding of a signal.

### Functions Used
- `fliplr()` → reverses the signal sequence  
- `stem()`  
- `title()`  
- `grid on`  

---

## 5. Addition of Signals

### Theory  
Addition combines two signals sample by sample.  
y[n] = x₁[n] + x₂[n]

Used in mixing and superposition of signals.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 6. Subtraction of Signals

### Theory  
Subtraction gives the difference between two signals.  
y[n] = x₁[n] − x₂[n]

Used in noise cancellation and error signals.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 7. Multiplication of Signals

### Theory  
Multiplication combines two signals sample by sample.  
y[n] = x₁[n] · x₂[n]

Used in modulation and windowing.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 8. Periodic Signals

### Theory  
A signal is periodic if it repeats after a fixed interval N.  
x[n] = x[n + N]

N is called the fundamental period.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## 9. Aperiodic Signals

### Theory  
A signal that does not repeat for any finite value of N is called aperiodic.

### Functions Used
- `stem()`  
- `title()`  
- `grid on`  

---

## Software Used
- MATLAB R2025b

## Author
Manish Kumar
