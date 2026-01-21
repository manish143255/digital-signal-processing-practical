n=-10:10;
n1= -2:3;
n2= -1:3;
a1 = 2; % First value of a
a2 = 0.5; % Second value of a
u = n >= 0; % Unit step sequence
ramp = n .* u; % Ramp function defined as n for n >= 0, 0 otherwise
impulse = (n == 0); % Unit impulse sequence defined as 1 at n=0, 0 otherwise
exponential1 = a1 .^ n; % Exponential sequence for a = 2
exponential2 = a2 .^ n; % Exponential sequence for a = 0.5
x1 = [1,2,3,-1,-2,-5]; % Discrete-Time Sequence
x2 = [1,0,-1,2,3]; % Discrete-Time Sequence

figure
subplot(2,2,1)
stem(n, u); 
hold on 
stem(0,u(n==0),'filled')
xlabel('n');
ylabel('u [n]');
legend('u[n]','u(0)','Location','northwest')
title('Unit Step Sequence');
grid on

subplot(2,2,2)
stem(n, ramp, 'r'); 
hold on 
stem(0,ramp(n==0),'r','filled')
xlabel('n');
ylabel('ramp [n]');
title('Ramp Sequence');
legend('Ramp[n]','Ramp(0)','Location','northwest')
grid on


subplot(2,2,3)
stem(n, impulse, 'g'); 
hold on 
stem(0,impulse(n==0),'g','filled')
xlabel('n');
ylabel ('impulse [n]');
legend('impulse[n]','impulse(0)','Location','northeast')
title('Unit Impulse Sequence'); 
grid on


subplot(2,2,4)
stem(n, exponential1 ); 
hold on 
stem(0,exponential1(n==0),'filled')
xlabel('n');
ylabel('exponential [n]');
title('Exponential Sequence (i)');
legend('a = 2','exponential(0)','Location','northwest');
grid on

figure;
subplot(2,2,1)
stem(n, exponential2, 'r');
hold on 
stem(0,exponential2(n==0),'r','filled')
xlabel('n');
ylabel('exponential [n]');
title('Exponential Sequence (ii)');
legend('a = 0.5','exponential(0)','Location','northeast');
grid on


subplot(2,2,2)
stem(n1, x1, 'g')
hold on 
stem(0,x1(n1==0),'g','filled')
xlabel('n');
ylabel('x [n]');
title('Discrete-Time Sequence (i)');
legend('x[n]','x(0)','Location','northeast');
grid on

subplot(2,2,3)
stem(n2, x2 )
hold on 
stem(0,x2(n2==0),'filled')
xlabel('n');
ylabel('x [n]');
title('Discrete-Time Sequence (ii)');
legend('x[n]','x(0)','Location','northwest');
grid on

