x1 = [100, 1000, 100000, 1000000, 2000000, 7000000, 10000000, 20000000];
y1 = [21.27, 17.02, 28.4, 2, 2, 0.9, 0.574, 0.472];
y2 = [4.04, 4.03, 3.77, 2.3125, 1, 0.432, 0.53, 0.46];

figure;
hold on;

plot(x1, y1, '-r', 'LineWidth', 1.5); % Đường màu đỏ
plot(x1, y2, '-g', 'LineWidth', 1.5); % Đường màu xanh lá
% Đặt tiêu đề và nhãn cho trục
title('Sự phụ thuộc hệ số khuếch đại vào tần số');
xlabel('Tần số (Hz)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);
ylabel('Hệ số khuếch đại A','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);

% Thêm chú thích cho các đường
legend('Không có phản hồi âm', 'Có phản hồi âm');

grid on;
