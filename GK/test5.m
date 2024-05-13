% Thời gian lấy mẫu
Fs = 500; % Tần số lấy mẫu
duration = 10; % Thời gian lấy mẫu (s)
n_samples = Fs * duration; % Số lượng mẫu
t = linspace(0, duration, n_samples); % Thời gian

% Tín hiệu liên tục x(t)
x_t = cos(30*pi*t) + 0.4*sin(50*pi*t);

% Tín hiệu rời rạc x(n) sau khi lấy mẫu
n = 0:(n_samples - 1); % Thời gian rời rạc
x_n = cos(30*pi*n/Fs) + 0.4*sin(50*pi*n/Fs);

% Vẽ đồ thị
figure;

% Subplot 1: Vẽ tín hiệu rời rạc x(n) sau khi thực hiện lấy mẫu
subplot(2, 3, 1);
stem(n, x_n);
title('Tín hiệu rời rạc x(n) sau khi lấy mẫu');
xlabel('n');
ylabel('Amplitude');
