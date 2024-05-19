% Load dữ liệu từ file ECGdata.mat
load('ECGdata.mat');

% Sử dụng hàm pan_tompkin để xác định các điểm R cho từng bệnh nhân
[locs_patient1, ~, ~, ~] = pan_tompkin(ecg_data_patient1, fs_patient1);
[locs_patient2, ~, ~, ~] = pan_tompkin(ecg_data_patient2, fs_patient2);
% ...

% Tính toán khoảng cách giữa các điểm R để tính nhịp tim trung bình
RR_intervals_patient1 = diff(locs_patient1) / fs_patient1;
RR_intervals_patient2 = diff(locs_patient2) / fs_patient2;
% ...

% Tính toán nhịp tim trung bình cho từng bệnh nhân
average_hr_patient1 = 60 / mean(RR_intervals_patient1);
average_hr_patient2 = 60 / mean(RR_intervals_patient2);
% ...

% Hiển thị nhịp tim trung bình của từng bệnh nhân
disp(['Nhịp tim trung bình của bệnh nhân 1: ', num2str(average_hr_patient1), ' bpm']);
disp(['Nhịp tim trung bình của bệnh nhân 2: ', num2str(average_hr_patient2), ' bpm']);
% ...

