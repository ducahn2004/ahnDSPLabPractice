% Đường dẫn đến file âm thanh trên máy tính của bạn
file_path = 'start.au';

% Sử dụng lệnh audioread() để tải file âm thanh
[audio, fs] = audioread(file_path);

% Vẽ tín hiệu âm thanh trong miền thời gian
time = (0:length(audio)-1) / fs;
plot(time, audio);
xlabel('Thời gian (s)');
ylabel('Biên độ');
title('Tín hiệu âm thanh');

% Chọn khoảng thời gian muốn nghe âm thanh
start_sample = 1000;
end_sample = 2000;
selected_audio = audio(start_sample:end_sample);

% Nghe lại âm thanh trong khoảng thời gian đã chọn
sound(selected_audio, fs);