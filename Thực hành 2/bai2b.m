t = 0:0.1:5;     % Chuỗi thời gian t
x = exp(-t);     % Tạo tín hiệu e^(-t)

plot(t, x);      % Vẽ đồ thị
xlabel('t');
ylabel('e^{-t}');
title('Đồ thị hàm e^{-t}');