% Đọc file âm thanh
[signal, fs] =  audioread('start.au');

% Xác định phần voiced (Cần bổ sung xử lý tín hiệu)
% ... (Sử dụng phương pháp xử lý tín hiệu để tách phần voiced)

% Ví dụ đơn giản (chỉ lấy một phần tín hiệu giả sử là voiced)
voiced_signal = signal(1:1000); % Thay thế 1000 bằng đoạn voiced thực sự

% Xác định vị trí pitch
pitch_positions = pitch(voiced_signal, fs);

% Tính khoảng cách giữa các pitch
pitch_distances = diff(pitch_positions);
    
% Hiển thị kết quả
disp('Khoảng cách giữa các pitch:');
disp(pitch_distances);


[pks, locs] = findpeaks(audio, 'MinPeakHeight', threshold, 'MinPeakDistance', min_distance);

pitch_distance_samples = diff(locs);S