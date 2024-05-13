t = -10:0.1:10;  % Chuỗi thời gian t
x = sinc(t);     % Tạo tín hiệu sinc(t)

plot(t, x);     % Vẽ đồ thị
xlabel('t');
ylabel('sinc(t)');
title('Tín hiệu liên tục của sinc(t)');