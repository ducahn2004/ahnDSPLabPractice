% Load data from ECGdata.mat
load('ECGdata.mat');

% Define sampling frequencies
fs1 = 360; % Sampling frequency for ECG1
fs2 = 250; % Sampling frequency for ECG2

% Detect R peaks in ECG1
[~,rpeaks_ecg1] = pan_tompkin(ECG1, fs1);

% Detect R peaks in ECG2
[~,rpeaks_ecg2] = pan_tompkin(ECG2, fs2);

% Plot ECG1 with R peaks
figure;
subplot(2,1,1);
plot((0:length(ECG1)-1)/fs1, ECG1);
hold on;
plot(rpeaks_ecg1/fs1, ECG1(rpeaks_ecg1), 'ro', 'MarkerSize', 5);
title('ECG1 with R peaks');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Plot ECG2 with R peaks
subplot(2,1,2);
plot((0:length(ECG2)-1)/fs2, ECG2);
hold on;
plot(rpeaks_ecg2/fs2, ECG2(rpeaks_ecg2), 'ro', 'MarkerSize', 5);
title('ECG2 with R peaks');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
