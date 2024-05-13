n = -10:10;   % Chuỗi thời gian n
n0 = 2;       % Chỉ số bắt đầu của xung chữ nhật
width = 4;    % Độ rộng của xung chữ nhật

r = rectangular_pulse(n, n0, width);  % Gọi hàm rectangular_pulse

stem(n, r);  % Vẽ đồ thị
xlabel('n');
ylabel('r(n)');
title('Xung chữ nhật r(2,4)');