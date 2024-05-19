% Bước 1: Load dữ liệu tín hiệu ECG0 từ file ECGdata.mat
load('ECGdata.mat');

% Bước 2: Tạo trục thời gian cho đồ thị tín hiệu
t = (0:length(ECG0)-1) / fs0;

% Bước 3: Vẽ đồ thị tín hiệu ECG0
figure;
subplot(2, 1, 1);
plot(t, ECG0);
title('Tín hiệu ECG0');
xlabel('Thời gian (s)');
ylabel('Amplitude');
grid on;

% Bước 4: Tính toán và vẽ phổ biên độ của tín hiệu
N = length(ECG0);
Y = fft(ECG0);
f = (0:N-1) * fs0 / N;
magnitude = abs(Y);

subplot(2, 1, 2);
plot(f, magnitude);
title('Phổ biên độ của tín hiệu ECG0');
xlabel('Tần số (Hz)');
ylabel('Độ biên độ');
grid on;

% Bước 5: Đánh dấu nhiễu điện lưới tại tần số 50Hz và các hài phụ của nó trên phổ biên độ
hold on;
line([50, 50], ylim, 'Color', 'red', 'LineStyle', '--', 'LineWidth', 1);
line([100, 100], ylim, 'Color', 'red', 'LineStyle', '--', 'LineWidth', 1);
line([150, 150], ylim, 'Color', 'red', 'LineStyle', '--', 'LineWidth', 1);
line([200, 200], ylim, 'Color', 'red', 'LineStyle', '--', 'LineWidth', 1);
xlim([0, 250]);
hold off;
