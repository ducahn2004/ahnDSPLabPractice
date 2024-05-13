% Bước 1: Xác định h(n)
n = 0:20;
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
a = [1, -2, 1]; % Hệ số a
if all(abs(roots(a)) < 1)
    disp('Hệ thống ổn định');
else
    disp('Hệ thống không ổn định');
end

% Bước 3: Xác định tín hiệu ra khi tín hiệu vào là x(n) = u(n)
x_n1 = ones(size(n)); % Tín hiệu vào
y_n1 = filter(1, a, x_n1); % Tín hiệu ra
figure;
stem(n, y_n1);
xlabel('Thời gian (n)');
ylabel('y(n)');
title('Tín hiệu ra khi x(n) = u(n)');

% Bước 4: Xác định tín hiệu ra khi x(n) = 2sin(0.01πn), −200 ≤ n ≤ 200
n = -200:200;
x_n2 = 2 * sin(0.01 * pi * n); % Tín hiệu vào
y_n2 = filter(1, a, x_n2); % Tín hiệu ra
figure;
stem(n, y_n2);
xlabel('Thời gian (n)');
ylabel('y(n)');
title('Tín hiệu ra khi x(n) = 2sin(0.01\pin), -200 ≤ n ≤ 200');
