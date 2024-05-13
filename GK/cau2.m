% Bước 1: Xác định tần số lớn nhất của tín hiệu (f_max)
f_max = 50; % Tần số lớn nhất của tín hiệu là 50 Hz

% Bước 2: Lấy mẫu tín hiệu với các tần số lấy mẫu được chỉ định
% (i) Lấy mẫu với tần số lớn hơn 3 lần f_max
fs_1 = 3 * f_max;
t_1 = 0:1/fs_1:1; % Vector thời gian từ 0 đến 1 giây với bước là 1/fs_1
x_1 = 10*sin(50*pi*t_1).*cos(20*pi*t_1); % Tín hiệu mẫu

% (ii) Lấy mẫu với tần số nhỏ hơn 2 lần f_max
fs_2 = 2 * f_max;
t_2 = 0:1/fs_2:1; % Vector thời gian từ 0 đến 1 giây với bước là 1/fs_2
x_2 = 10*sin(50*pi*t_2).*cos(20*pi*t_2); % Tín hiệu mẫu

% Bước 3: Vẽ tín hiệu và phổ biên độ tần số của từng lần lấy mẫu
% (i) Lấy mẫu với tần số lớn hơn 3 lần f_max
figure;
% Vẽ tín hiệu lấy mẫu (i) trong miền thời gian
subplot(2,1,1);
stem(t_1, x_1, 'linewidth', 2);
title('Tín hiệu lấy mẫu (i) trong miền thời gian','FontWeight','bold','FontSize',14);
xlabel('Thời gian (s)','FontWeight','bold','FontSize',14);
ylabel('Amplitude','FontWeight','bold','FontSize',14);
grid on;
% Vẽ phổ biên độ tần số của tín hiệu lấy mẫu (i)
subplot(2,1,2);
NFFT_1 = length(x_1);
X_1 = fft(x_1, NFFT_1);
frequencies_1 = (0:NFFT_1-1)*(fs_1/NFFT_1);
plot(frequencies_1, abs(X_1), 'linewidth', 2);
title('Phổ biên độ tần số của tín hiệu lấy mẫu (i)','FontWeight','bold','FontSize',14);
xlabel('Tần số (Hz)','FontWeight','bold','FontSize',14);
ylabel('Amplitude','FontWeight','bold','FontSize',14);
grid on;
% (ii) Lấy mẫu với tần số nhỏ hơn 2 lần f_max
figure;
% Vẽ tín hiệu lấy mẫu (ii) trong miền thời gian
subplot(2,1,1);
stem(t_2, x_2, 'linewidth', 2);
title('Tín hiệu lấy mẫu (ii) trong miền thời gian','FontWeight','bold','FontSize',14);
xlabel('Thời gian (s)','FontWeight','bold','FontSize',14);
ylabel('Amplitude','FontWeight','bold','FontSize',14);
grid on;
% Vẽ phổ biên độ tần số của tín hiệu lấy mẫu (ii)
subplot(2,1,2);
NFFT_2 = length(x_2);
X_2 = fft(x_2, NFFT_2);
frequencies_2 = (0:NFFT_2-1)*(fs_2/NFFT_2);
plot(frequencies_2, abs(X_2), 'linewidth', 2);
title('Phổ biên độ tần số của tín hiệu lấy mẫu (ii)','FontWeight','bold','FontSize',14);
xlabel('Tần số (Hz)','FontWeight','bold','FontSize',14);
ylabel('Amplitude','FontWeight','bold','FontSize',14);
grid on;