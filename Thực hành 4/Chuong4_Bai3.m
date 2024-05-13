% Trường hợp 2
x2 = ones(size(n)); % x(n)
y2 = zeros(size(n));
y2(1) = -1; % y(-1)
y2(2) = -2; % y(-2)

for i = 3:length(n)
    y2(i) = x2(i) + x2(i-1) + 2*y2(i-1) - y2(i-2);
end

stem(n, y2);
xlabel('Thời gian (n)');
ylabel('y(n)');
title('Đáp ứng lối ra của hệ thống (Trường hợp 2)');
