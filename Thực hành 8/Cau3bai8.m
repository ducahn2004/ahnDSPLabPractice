% Đường dẫn đến file âm thanh trên máy tính của bạn
file_path = 'start.au';

% Sử dụng lệnh audioread() để tải file âm thanh
[audio, fs] = audioread(file_path);

% Giả sử bạn đã tải và load file âm thanh vào biến 'audio' và tần số lấy mẫu vào biến 'fs'

% Phân tích tín hiệu âm thanh bằng FFT
N = length(audio); % Độ dài tín hiệu
X = abs(fft(audio)); % Biến đổi Fourier của tín hiệu

% Tìm tần số cao nhất trong tín hiệu
frequencies = (0:N/2-1) * fs / N; % Tần số tương ứng với các mẫu FFT
max_frequency = frequencies(X == max(X(:))); % Tần số cao nhất

% Tính khoảng cách giữa các pitch liên tiếp
pitch_distance_samples = fs / max_frequency;

% Hiển thị kết quả
disp(['Khoảng cách giữa các pitch liên tiếp: ', num2str(pitch_distance_samples), ' mẫu']);

% Giả sử bạn đã tải và load file âm thanh vào biến 'audio' và tần số lấy mẫu vào biến 'fs'

% Thực hiện phân tích tín hiệu âm thanh bằng `findpeaks`
[pks, locs] = findpeaks(audio, 'MinPeakHeight', threshold, 'MinPeakDistance', min_distance);

% Tính khoảng cách giữa các đỉnh pitch liên tiếp
pitch_distance_samples = diff(locs);

% Hiển thị kết quả
disp(['Khoảng cách giữa các pitch liên tiếp: ', num2str(pitch_distance_samples'), ' mẫu']);