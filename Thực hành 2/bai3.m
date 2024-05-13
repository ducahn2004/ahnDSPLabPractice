% Ví dụ vẽ đồ thị

% Tạo hai tín hiệu liên tục
t = 0:0.1:5;
signal1 = sin(t);
signal2 = cos(t);

% Gọi hàm sig_mult để nhân vô hướng hai tín hiệu liên tục
result = sig_mult(signal1, signal2);

% Vẽ đồ thị
subplot(3, 1, 1);
plot(t, signal1);
xlabel('t');
ylabel('signal1');
title('Đồ thị signal1');

subplot(3, 1, 2);
plot(t, signal2);
xlabel('t');
ylabel('signal2');
title('Đồ thị signal2');

subplot(3, 1, 3);
plot(t, result);
xlabel('t');
ylabel('result');
title('Đồ thị kết quả');

% Hiển thị lưới trên các đồ thị
grid on;

% Hiển thị biểu đồ
figure;