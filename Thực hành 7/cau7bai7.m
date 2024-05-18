
wp = 0.6*pi; 
ws = 0.4*pi; 
Ap = 0.25; 
As = 60; 
 

if wp <= ws
    error('Tần số của dải thông phải lớn hơn tần số của dải triệt.');
end
 

C_window = 3.21;
L = round(C_window * 2 * pi / abs(wp - ws));
 

b = fir1(L, [ws/pi, wp/pi], 'high', hamming(L+1));
 

if wp <= ws
    error('Tần số của dải thông phải lớn hơn tần số của dải triệt');
end
 

C_window = 3.21;
L = round(C_window * 2 * pi / abs(wp - ws));
 

b = fir1(L, [ws/pi, wp/pi], 'high', hamming(L+1));
 

[H, w] = freqz(b, 1, 1024);
 

figure;
subplot(2,1,1);
stem(b);
xlabel('Samples');
ylabel('h(n)');
title('Impulse Response (h(n)) of FIR Filter');
 
subplot(2,1,2);
plot(w/pi, abs(H));
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('|H(w)|');
title('Magnitude Response of FIR Filter');
grid on;
