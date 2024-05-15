b = fir1(80,0.5,kaiser(81,8));
[H, w]=freqz(b,1, 512);
W1= [0:1/512: 1];
subplot(2,1,1);
plot(W1(1:end-1), 20*log10(abs(H))); grid;
xlabel("Tan so chuan hoa (\times\pi rad/sample)")
ylabel("Pho Bien do (dB)")
subplot(2,1,2);
plot(W1(1:end-1), angle(H)); grid;
xlabel("Tan so chuan hoa (\times\pi rad/sample)")
ylabel("Pho Pha ")