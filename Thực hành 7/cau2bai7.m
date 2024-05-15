% Tạo tín hiệu x ban đầu
fs = 8192; % Tần số lấy mẫu (Hz)
duration = 3; % Thời gian tín hiệu (s)
t = 0:1/fs:duration-1/fs; % Trục thời gian

% Tạo tín hiệu thành phần
x1 = sin(2*pi*220*t).*(t>=0 & t<0.3);
x2 = sin(2*pi*300*t).*(t>=0.1 & t<0.3);
x3 = sin(2*pi*440*t).*(t>=0.2 & t<0.3);

% Tạo tín hiệu x là tổng của các thành phần
x = x1 + x2 + x3;

% Thêm nhiễu trắng Gaussian
noise = randn(size(t));
y = x + noise;

% Vẽ tín hiệu x và tín hiệu y sau khi bị nhiễu
figure;
subplot(2,1,1);
plot(t, x);
xlabel('Thời gian (s)');
ylabel('Amplitude');
title('Tín hiệu x ban đầu');

subplot(2,1,2);
plot(t, y);
xlabel('Thời gian (s)');
ylabel('Amplitude');
title('Tín hiệu y sau khi bị nhiễu');

% Thiết kế bộ lọc IIR để loại bỏ thành phần 300Hz
fc_stop = 300; % Tần số cắt dừng (Hz)
order = 8; % Bậc bộ lọc

[b, a] = butter(order, fc_stop/(fs/2), 'high'); % Thiết kế bộ lọc thông cao Butterworth

% Tính toán đáp ứng tần số của bộ lọc
freq = 0:1:fs/2; % Tần số (Hz)
[h, w] = freqz(b, a, freq, fs); % Đáp ứng biên độ và pha của bộ lọc

% Vẽ đáp ứng tần số của bộ lọc
figure;
plot(w, 20*log10(abs(h)), 'r', 'LineWidth', 1.5);
grid on;
xlabel('Tần số (Hz)');
ylabel('Đáp ứng biên độ (dB)');
title('Đáp ứng tần số của bộ lọc IIR');

% Lọc tín hiệu y với bộ lọc IIR
y_filtered = filter(b, a, y);

% So sánh tín hiệu trong miền thời gian và tần số trước và sau khi lọc
figure;
subplot(2,2,1);
plot(t, x);
xlabel('Thời gian (s)');
ylabel('Amplitude');
title('Tín hiệu x ban đầu');

subplot(2,2,2);
plot(t, y);
xlabel('Thời gian (s)');
ylabel('Amplitude');
title('Tín hiệu y sau khi bị nhiễu');

subplot(2,2,3);
plot(t, y_filtered);
xlabel('Thời gian (s)');
ylabel('Amplitude');
title('Tín hiệu y sau khi lọc');

subplot(2,2,4);
plot(w, 20*log10(abs(h)), 'r', 'LineWidth', 1.5);
grid on;
xlabel('Tần số (Hz)');
ylabel('Đáp ứng biên độ (dB)');
title('Đáp ứng tần số của bộ lọc IIR');