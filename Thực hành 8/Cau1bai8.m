% Thiết lập thông số
fs = 8000; % Tần số lấy mẫu (8 kHz)
duration = 5; % Thời gian ghi âm (5 giây)

% Ghi âm âm thanh từ người dùng
recObj = audiorecorder(fs, 16, 1); % Khởi tạo đối tượng ghi âm
disp('Bắt đầu ghi âm. Hãy nói vào micro...');
recordblocking(recObj, duration); % Ghi âm trong khoảng thời gian đã định

disp('Kết thúc ghi âm.');

% Lấy dữ liệu âm thanh
audioData = getaudiodata(recObj);

% Nghe lại âm thanh
disp('Nghe lại âm thanh.');
sound(audioData, fs);

% Vẽ tín hiệu âm thanh trong miền thời gian
time = (0:length(audioData)-1)/fs; % Tạo vectơ thời gian
plot(time, audioData);
xlabel('Thời gian (s)');
ylabel('Biên độ');
title('Tín hiệu âm thanh của bạn');

% Lưu vào file âm thanh
filename = 'myvoice1.wav';
audiowrite(filename, audioData, fs);
disp(['Đã lưu file âm thanh: ' filename]);