% Đọc file âm thanh
[signal, fs] = audioread('start.au');

% Xác định phần voiced (Cần bổ sung xử lý tín hiệu)
% ... (Sử dụng phương pháp xử lý tín hiệu để tách phần voiced)

% Ví dụ đơn giản (chỉ lấy một phần tín hiệu giả sử là voiced)
voiced_signal = signal(1:1000); % Thay thế 1000 bằng đoạn voiced thực sự

% Xác định vị trí pitch
pitch_positions = pitch(voiced_signal, fs);
s

% Tính khoảng cách giữa các pitch
pitch_distances = diff(pitch_positions);

% Tính khoảng thời gian giữa 2 pitch liên tiếp
T = 1 / fs; % Khoảng cách giữa 2 mẫu liên tiếp
pitch_times = pitch_distances * T * 1000; % Chuyển đổi sang mili giây

% Xác định giới tính người nói
f0_mean = mean(fs ./ pitch_positions); % Tính F0 trung bình

if f0_mean < 150
    disp('Giới tính: Nam');
elseif f0_mean < 400
    disp('Giới tính: Nữ');
else
    disp('Khó xác định giới tính');
end

% Hiển thị kết quả
disp('Khoảng thời gian giữa 2 pitch liên tiếp (ms):');
disp(pitch_times);
