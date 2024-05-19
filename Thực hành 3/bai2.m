% Xác định các tham số
f = 13;    % Tần số tín hiệu ban đầu (Hz)
fp = 3;     % Tần số tín hiệu được lấy mẫu (Hz)
fs = 10;    % Tần số lấy mẫu (Hz)

% Tạo tín hiệu thời gian
t = 0:1/fs:10;
x = sin(2*pi*f*t);

% Lấy mẫu tín hiệu
x_sampled = x(1:fs/fp:end);
% Phân tích tần số
X = fft(x_sampled);
f_fft = fs/length(X)*(0:length(X)-1);

% Vẽ đồ thị tín hiệu thời gian
figure(1);
plot(t, x);
xlabel('Thời gian (s)');
ylabel('Biên độ');
title('Tín hiệu thời gian');

% Vẽ đồ thị phổ tần số
figure(2);
plot(f_fft, abs(X));
xlabel('Tần số (Hz)');
ylabel('Biên độ');
title('Phổ tần số');

% Xác định tần số tín hiệu được lấy mẫu
[~, peak_idx] = max(abs(X));
f_peak = f_fft(peak_idx);

% Hiển thị kết quả
fprintf('Tần số tín hiệu ban đầu: %f Hz\n', f);
fprintf('Tần số tín hiệu được lấy mẫu: %f Hz\n', f_peak);