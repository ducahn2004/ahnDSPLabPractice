% Thông số đầu vào
Fs = 44100; % Tần số lấy mẫu (Hz)
Fc = 5000; % Tần số chồng phố (Hz)

% Tạo tín hiệu input
t = 0:1/Fs:1; % Thời gian
x = sin(2*pi*1000*t) + 0.5*sin(2*pi*5000*t); % Tín hiệu input

% Thiết kế bộ lọc thông thấp
Wn = Fc/Fs; % Tần số cắt chuẩn hóa
[b, a] = butter(4, Wn, 'low'); % Bộ lọc Butterworth order 4

% Lọc tín hiệu
y = filter(b, a, x);

% Lấy mẫu lại tín hiệu
Fs_new = 22050; % Tần số lấy mẫu mới
y_resampled = resample(y, Fs_new, Fs);

% Nghe tín hiệu
sound(y_resampled, Fs_new);