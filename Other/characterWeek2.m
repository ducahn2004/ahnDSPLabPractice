clc;

x = [0.016, 0.5, 1.25, 1.75, 2, 2.5, 3, 3.5, 3.75, 4.25, 5];
y = [4.4, 4.38, 0.177, 0.177, 0.176, 0.176, 0.176, 0.176, 0.176, 0, 0];

plot(x, y, 'o-');

% Đặt tiêu đề cho đồ thị
title('Sự phụ thuộc thế ra theo thế vào ');

% Đặt nhãn cho các trục
xlabel('Thế vào (V)');
ylabel('Thế ra (V)');
