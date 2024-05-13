% Bước 1: Vẽ đáp ứng xung h(n)
n = 0:20;
h_n = zeros(size(n));
h_n(1) = 2; % Giá trị ban đầu của h(n) tính bằng tay
h_n(2) = 4; % Giá trị ban đầu của h(n) tính bằng tay

for i = 3:length(n)
    h_n(i) = 2 * i; % Giả sử h(n) = 2n, điều này cần được thay đổi theo kết quả tính bằng tay
end

figure;
stem(n, h_n);
xlabel('Thời gian (n)');
ylabel('h(n)');
title('Đáp ứng xung h(n)');

% Bước 2: Vẽ sơ đồ điểm cực và điểm không
a = [1, -4, 3]; % Hệ số a
b = [1, 1];     % Hệ số b
figure;
zplane(b, a);
title('Sơ đồ điểm cực và điểm không');

% Bước 3: Kiểm tra tính ổn định của hệ thống
if all(abs(roots(a)) < 1)
    disp('Hệ thống ổn định');
else
    disp('Hệ thống không ổn định');
end

% Bước 4: Nếu hệ thống ổn định, xác định và vẽ đáp ứng tần số và vẽ phổ biên độ của hệ thống
if all(abs(roots(a)) < 1)
    [H, w] = freqz(b, a, 1024, 'whole');
    
    % Vẽ đáp ứng tần số
    figure;
    subplot(2, 1, 1);
    plot(w/pi, abs(H));
    xlabel('Tần số (\times\pi rad/mẫu)');
    ylabel('|H(e^{j\omega})|');
    title('Đáp ứng tần số');
    
    % Vẽ phổ biên độ
    subplot(2, 1, 2);
    plot(w/pi, angle(H));
    xlabel('Tần số (\times\pi rad/mẫu)');
    ylabel('Giai đoạn của H(e^{j\omega})');
    title('Đáp ứng biên độ');
end

% Bước 5: Vẽ đáp ứng lối ra nếu tín hiệu lối vào là x(n) = 2nu(n)
x_n1 = 2 * n .* (n >= 0); % Tín hiệu lối vào
y_n1 = filter(b, a, x_n1); % Đáp ứng lối ra
figure;
stem(n, y_n1);
xlabel('Thời gian (n)');
ylabel('y(n)');
title('Đáp ứng lối ra nếu x(n) = 2nu(n)');

% Bước 6: Vẽ đáp ứng lối ra nếu tín hiệu lối vào là x(n) =
