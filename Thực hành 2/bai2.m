t = -10:0.1:10;                           % Chuỗi thời gian t
x = sin(pi*t/3 + pi/4) + 2*cos(pi*t/4);    % Tạo tín hiệu x(t)

plot(t, x);                               % Vẽ đồ thị
xlabel('t');
ylabel('x(t)');
title('Đồ thị hàm x(t) = sin(\pi t/3 + \pi/4) + 2cos(\pi t/4)');