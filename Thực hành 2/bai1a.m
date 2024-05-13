n = -10:10;  % Chuỗi thời gian n
n0 = 3;      % Chỉ số n0

u = unit_signal(n, n0);  % Gọi hàm unit_signal

stem(n, u);  % Vẽ đồ thị
xlabel('n');
ylabel('u(n-3)');
title('Xung nhảy bậc unit-signal u(n-3)');