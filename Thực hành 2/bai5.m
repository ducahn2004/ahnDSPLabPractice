% Vẽ phổ biên độ và pha của tín hiệu sinc(t)

% Tạo một mảng thời gian t từ -10 đến 10 với bước 0.01
t = -10:0.01:10;

% Tính toán tín hiệu sinc(t)
x = sinc(t);

% Tính toán phổ Fourier của tín hiệu
X = fftshift(fft(x));

% Tính toán biến số tương ứng cho phổ
fs = 1/(t(2)-t(1));  % Tần số lấy mẫu
f = linspace(-fs/2, fs/2, length(t));  % Mảng tần số

% Vẽ đồ thị phổ biên độ
subplot(2,1,1);
plot(f, abs(X));
xlabel('f');
ylabel('Phổ biên độ');
title('Đồ thị phổ biên độ của sinc(t)');

% Vẽ đồ thị phổ pha
subplot(2,1,2);
plot(f, angle(X));
xlabel('f');
ylabel('Phổ pha');
title('Đồ thị phổ pha của sinc(t)');

% Hiển thị lưới trên các đồ thị
grid on;