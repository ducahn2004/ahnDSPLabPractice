n=0:9;
h=(1/2).^n;
h1= (1.3).^n;
figure;subplot(2,1,1);
stem(n, h, "LineWidth", 2);
legend("stable")
subplot(2,1,2);
stem(n, h1, "r","LineWidth", 2);
legend("non-stable")
