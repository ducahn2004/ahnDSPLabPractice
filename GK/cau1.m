
t = linspace(0, 3, 3000); 
fs = 4000;
duration = 10; 


signal = zeros(1, length(t));

index = t <= 2;
signal(index) = sin(2 * pi * 300 * t(index));


index = t > 2 & t <= 6;
signal(index) = 0.2 * sin(2 * pi * 300 * t(index)) .* sin(2 * pi * 400 * t(index));

index = t > 6 & t <= 10;
signal(index) = 0.5 * sin(2 * pi * 400 * t(index)) + 0.5 * sin(2 * pi * 500 * t(index));

figure;
plot(t, signal);
xlabel('Thời gian (s)','FontWeight','bold','FontSize',14);
ylabel('Biên độ','FontWeight','bold','FontSize',14);
title('Tín hiệu đầu ra','FontWeight','bold','FontSize',14);
grid on;