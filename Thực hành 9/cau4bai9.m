% Load data from ECGdata.mat
load('ECGdata.mat');

% Plot ECG2 signal
figure;
subplot(3,1,1);
plot((0:length(ECG2)-1)/fs2, ECG2);
title('ECG2 Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Plot ECG0 signal
subplot(3,1,2);
plot((0:length(ECG0)-1)/fs0, ECG0);
title('ECG0 Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Apply the filter designed in the previous step to ECG0
fECG0 = filter(b, a, ECG0);

% Plot filtered ECG0 signal
subplot(3,1,3);
plot((0:length(fECG0)-1)/fs0, fECG0);
title('Filtered ECG0 Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Adjust subplot layout
sgtitle('Comparison of ECG Signals');
