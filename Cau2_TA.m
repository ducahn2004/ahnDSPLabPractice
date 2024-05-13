% Định nghĩa tín hiệu
t = 0:0.0001:1; % Tạo vector thời gian từ 0 đến 1 giây với bước là 0.0001 giây
x = 10*sin(50*pi*t).*cos(20*pi*t); % Tín hiệu x(t)

% Tìm tần số lớn nhất của tín hiệu
f1 = (50*pi)/(2*pi); % Tần số của thành phần sin
f2 = (20*pi)/(2*pi); % Tần số của thành phần cos
f_max = max(f1, f2); % Tần số lớn nhất của tín hiệu

% Tần số lấy mẫu lớn hơn 3 lần f_max
fs_high = 4 * f_max; % Tần số lấy mẫu lớn hơn 3 lần f_max
Ts_high = 1/fs_high; % Chu kỳ lấy mẫu
n_high = 0:Ts_high:1; % Vector thời gian lấy mẫu
x_high = 10*sin(50*pi*n_high).*cos(20*pi*n_high); % Tín hiệu lấy mẫu

% Tính biến đổi Fourier rời rạc của tín hiệu lấy mẫu
X_high = fft(x_high); % Biến đổi Fourier rời rạc

% Tạo vector tần số
f_axis_high = linspace(-fs_high/2, fs_high/2, length(x_high)); 

% Vẽ tín hiệu và phổ biên độ tần số
figure;

% Vẽ tín hiệu lấy mẫu
subplot(2,1,1);
stem(n_high, x_high, 'r');
title('Tín hiệu lấy mẫu trong miền thời gian');
xlabel('Thời gian (s)');
ylabel('Biên độ');
grid on;

% Vẽ phổ biên độ
subplot(2,1,2);
plot(f_axis_high, abs(fftshift(X_high)), 'r');
title('Phổ biên độ tần số của tín hiệu lấy mẫu');
xlabel('Tần số (Hz)');
ylabel('Biên độ');
grid on;


