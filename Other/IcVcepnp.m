x1 =  [0.1	0.12	0.2	0.5	1	1.7	2.5	3.0	5.23	6.0];
y1 = [1.1	1.5	1.65	1.8	1.9	2.1	2.35	2.4	2.5	2.8];

x2 = [0.09	0.1	0.15	0.35	1.1	2	2.5	3.2	4	5];
y2 = [1.2	1.38	1.5	2.6	3.6	3.9	4.05	4.2	4.28	4.7];

x3 = [0.05	0.1	0.2	0.42	0.5	1	1.8	2.5	3	3.62];
y3 = [1.3	2.1	3.75	5.79	6.06	6.2	6.3	7.1	8.3	10];

x4 = [0.09	0.3	0.5	1.3	1.7	2.5	3	3.7	4	4.63];
y4 = [4.1	4.7	7.2	7.4	7.7	8	9.2	11.2	13.4	17];

figure;
hold on;

plot(x1, y1, '-r', 'LineWidth', 0.5); % Đường màu đỏ
plot(x2, y2, '-g', 'LineWidth', 0.5); % Đường màu xanh lá
plot(x3, y3, '-b', 'LineWidth', 0.5); % Đường màu xanh dương
plot(x4, y4, '-m', 'LineWidth', 0.5); % Đường màu đỏ tím

% Đặt tiêu đề và nhãn cho trục
title('Họ đặc tuyến ra iC = f(vCE) với ib = const');
xlabel('Vce(V)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);
ylabel('Ic(mA)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);

% Thêm chú thích cho các đường
legend('10uA', '20uA', '30uA', '40uA');

grid on;