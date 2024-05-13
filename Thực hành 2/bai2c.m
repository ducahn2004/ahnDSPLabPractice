T = 2;               % Chu kỳ
amplitude = 1;       % Biên độ

t = 0:0.01:T;        % Chuỗi thời gian từ 0 đến T với bước 0.01
x = amplitude * square(2*pi/T * t);   % Tạo tín hiệu xung chữ nhật tuần hoàn

plot(t, x);          % Vẽ đồ thị
xlabel('t');
ylabel('x(t)');
title('Hàm xung chữ nhật tuần hoàn');
ylim([-1.5 1.5]);    % Đặt giới hạn trục y để hiển thị đúng biên độ

grid on;             % Hiển thị lưới