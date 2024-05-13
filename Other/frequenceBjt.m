x1 = [0.101, 2.3, 2.56, 3, 3.73, 3.82, 4.77];
y1 = [4.9, 4.5, 4.0, 3.2, 2.5, 2, 1.6];

x2= [0.269, 0.76, 2.3, 3, 5.92, 6.65, 12];
y2= [10.3, 10.2, 10, 6.4, 0.0143, 0.0132, 0.011];


% Vẽ đồ thị
figure;

subplot(2, 1, 1); % Phân chia figure thành 2 hàng, 1 cột, vẽ đồ thị đầu tiên
plot(x1, y1, '-o', 'LineWidth', 0.5, 'MarkerSize', 3);
title('Nguồn nuôi VDD = +5V');
xlabel('Vi(D)');
ylabel('Vo(D)');

subplot(2, 1, 2); % Phân chia figure thành 2 hàng, 1 cột, vẽ đồ thị thứ hai
plot(x2, y2, '-s', 'LineWidth', 0.5, 'MarkerSize', 3);
title('Nguồn nuôi VDD = +12V');
xlabel('Vi(D)');
ylabel('Vo(D)');

grid on;
