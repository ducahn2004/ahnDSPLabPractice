fs = 12672
fmax = 12672/2
[input, fs] = audioread('start.au');
t = 0:12671;
subplot(211);
plot(t(2000:4000), input(2000:4000));
title("miền thời gian");
X = fft(input);
subplot(212);
f_axis = fs/2*linspace(0,1,1000);
plot(f_axis,2*abs(X(1:1000))) ;
title("miền tần số");
 
L = 12672;
P2 = abs(X/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = fs*(0:(L/2))/L;
figure
plot(f,P1) 
title("Single-Sided Amplitude Spectrum of Y(t)")
xlabel("f (Hz)")
ylabel("|P1(f)|")
[MaxValue, MaxIndex] = max(P1);
max_freq = f(MaxIndex);
disp(max_freq)