% Bước 1: Xác định và vẽ đáp ứng xung của hệ thống h(n), 0 ≤ n ≤ 100
n = 0:100;
h_n = zeros(size(n));
h_n(1) = 1; % y(0) = 1
h_n(2) = 2; % y(1) = 2

for i = 3:length(n)
    h_n(i) = i - 1; % Giả sử h(n) = n - 1, điều này cần được thay đổi theo kết quả tính bằng tay
end

figure;
stem(n, h_n);
xlabel('Thời gian (n)');
ylabel('h(n)');
title('Phản hồi xung h(n)');

% Bước 2: Kiểm tra tính ổn định của hệ thống
a = [1, -0.5, 0.25]; % Hệ số a
if all(abs(roots(a)) < 1)
    disp('Hệ thống ổn định');
else
    disp('Hệ thống không ổn định');
end

% Bước 3: Với x(n) đã cho, tính và vẽ y(n) với 0 ≤ n ≤ 200
n = 0:200;
x_n = 5 + 3*cos(0.2*pi*n) + 4*sin(0.6*pi*n); % Tín hiệu vào
y_n = filter(1, a, x_n); % Tín hiệu ra
figure;
stem(n, y_n);
xlabel('Thời gian (n)');
ylabel('y(n)');
title('Tín hiệu ra y(n) với x(n) đã cho');
