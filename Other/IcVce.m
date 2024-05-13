x1 =  [0.16, 0.2,   0.5, 1.0,  1.7,  2.4,  3.3,  3.5,  4.1,  4.6,  5.2,  5.6,  6.0,  6.8, 7.3,   8.1, 8.6,  9.2];
y1 = [1.1, 1.24, 3.28, 3.32, 3.34, 3.51, 3.63, 3.65, 3.67, 3.75, 3.81, 3.79, 3.81, 3.9, 3.97, 4.01, 4.02, 4.29];

x2 = [0.069, 0.085, 0.1, 0.12, 0.15, 0.2, 0.3, 0.4, 0.6, 1.6, 2.1, 2.4, 3.0, 3.5, 4.0, 4.7, 5.3, 6.2, 6.8];
y2 = [1.15, 1.8, 2.66, 3.86, 4.9, 5.7, 6.0, 6.15, 6.29, 6.54, 6.63, 6.63, 6.79, 6.9, 7.06, 7.3, 7.5, 7.76, 7.9];

x3 = [0.059, 0.063, 0.070, 0.081, 0.09, 0.1, 0.11, 0.12, 0.13, 0.14, 0.18, 0.3, 0.6, 1.5, 1.9, 2.1, 3, 3.6, 4.2, 4.7];
y3 = [1.16, 1.34, 1.9, 2.5, 2.78, 3.8, 4.1, 5.2, 5.8, 6.3, 7.16, 9.01, 9.5, 9.6, 9.73, 9.9, 10, 10.6, 10.9, 11];

x4 = [0.09,	0.28,	0.7,	2.31,	2.7,	3.17,	3.61,	4.15,	4.9,	5.1];
y4 = [3.9,	9.3,	9.81,	9.9,	9.98,	10.2,	10.42,	10.9,	13.5,	17.12];
title('Họ đặc tuyến ra iC = f(vCE) với ib = const ');
% Vẽ biểu đồ
subplot(2,2,1);
plot(x1, y1, 'o-'); % Sử dụng 'o-' để vẽ dạng đường kết nối các điểm dữ liệu và hiển thị các điểm dữ liệu
title('ib = 10uA');
xlabel('Vce(V)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);
ylabel('Ic(mA)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);
grid on;

subplot(2,2,2);
plot(x2, y2, 'o-'); % Sử dụng 'o-' để vẽ dạng đường kết nối các điểm dữ liệu và hiển thị các điểm dữ liệu
title('ib = 20uA');
xlabel('Vce(V)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);
ylabel('Ic(mA)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);
grid on;

subplot(2,2,3);
plot(x3, y3, 'o-'); % Sử dụng 'o-' để vẽ dạng đường kết nối các điểm dữ liệu và hiển thị các điểm dữ liệu
title('ib = 30uA');
xlabel('Vce(V)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);
ylabel('Ic(mA)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);
grid on;


subplot(2,2,4);
plot(x4, y4, 'o-'); % Sử dụng 'o-' để vẽ dạng đường kết nối các điểm dữ liệu và hiển thị các điểm dữ liệu
title('ib = 40uA');
xlabel('Vce(V)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);
ylabel('Ic(mA)','FontWeight','bold','FontSize',11,'Color',[0.15 0.15 0.15]);
grid on;
