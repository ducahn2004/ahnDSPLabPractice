% Bước 1: Vẽ đáp ứng xung h(n)
n = 0:20;
h_n = 2 * (0.9).^n .* (n >= 0); % Đáp ứng xung tính bằng tay
figure;
stem(n, h_n);
xlabel('Thời gian (n)');
ylabel('h(n)');
title('Đáp ứng xung h(n)');

% Bước 2: Xác định các vector a, b
a = [1, -0.5]; % Hệ số a
b = [1, 2];    % Hệ số b

% Bước 3: Vẽ sơ đồ điểm cực và điểm không
figure;
zplane(b, a);
title('Sơ đồ điểm cực và điểm không');

% Bước 4: Kiểm tra tính ổn định của hệ thống
if all(abs(roots(a)) < 1)
    disp('Hệ thống ổn định');
else
    disp('Hệ thống không ổn định');
end

% Bước 5: Xác định và vẽ đáp ứng tần số và đáp ứng biên độ nếu hệ thống ổn định
if all(abs(roots(a)) < 1)
    [H, w] = freqz(b, a, 1024, 'whole');
    
    % Vẽ đáp ứng tần số
    figure;
    subplot(2, 1, 1);
    plot(w/pi, abs(H));
    xlabel('Tần số (\times\pi rad/mẫu)');
    ylabel('|H(e^{j\omega})|');
    title('Đáp ứng tần số');
    
    % Vẽ đáp ứng biên độ
    subplot(2, 1, 2);
    plot(w/pi, angle(H));
    xlabel('Tần số (\times\pi rad/mẫu)');
    ylabel('Giai đoạn của H(e^{j\omega})');
    title('Đáp ứng biên độ');
end

% Bước 6: Vẽ đáp ứng lối ra nếu tín hiệu lối vào là x(n) = 2(0.9)^nu(n)
x_n = 2 * (0.9).^n .* (n >= 0); % Tín hiệu lối vào
y_n = filter(b, a, x_n); % Đáp ứng lối ra
figure;
stem(n, y_n);
xlabel('Thời gian (n)');
ylabel('y(n)');
title('Đáp ứng lối ra');
