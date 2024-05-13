x1 = [0.101, 2.3, 2.56, 3, 3.73, 3.82, 4.77];
y1 = [4.9, 4.5, 4.0, 3.2, 2.5, 2, 1.6];

x2= [0.269, 0.76, 2.3, 3, 5.92, 6.65, 12];
y2= [10.3, 10.2, 10, 6.4, 0.0143, 0.0132, 0.011];

figure;
hold on;

plot(x1, y1, '-r', 'LineWidth', 0.5); % Đường màu đỏ
plot(x2, y2, '-g', 'LineWidth', 0.5); % Đường màu xanh lá

% Đặt tiêu đề và nhãn cho trục
title('Đặc trưng truyền của vi mạch CMOS');
xlabel('Vi(D)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);
ylabel('Vout(C)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);

% Thêm chú thích cho các đường
legend('VDD = +5V', 'VDD = +12V');

grid on;