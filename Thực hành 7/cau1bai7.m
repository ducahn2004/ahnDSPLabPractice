% Thiết kế bộ lọc thông cao Butterworth
fs = 8000; % Tần số lấy mẫu (Hz)
fc_high = 1000; % Tần số cắt thông cao (Hz)
order = 6; % Bậc bộ lọc

[b_high, a_high] = butter(order, fc_high/(fs/2), 'high'); % Thiết kế bộ lọc thông cao Butterworth

% Thiết kế bộ lọc thông dải Chebyshev Type-1
fc_bandpass_low = 1000; % Tần số cắt dưới (Hz)
fc_bandpass_high = 2000; % Tần số cắt trên (Hz)
rp = 1; % Độ rơi (dB)
rs = 40; % Độ suy giảm (dB)

[b_bandpass, a_bandpass] = cheby1(order, rp, [fc_bandpass_low fc_bandpass_high]/(fs/2), 'bandpass'); % Thiết kế bộ lọc thông dải Chebyshev Type-1

% Thiết kế bộ lọc triệt dải Chebyshev Type-2
fc_stop = 2000; % Tần số cắt triệt dải (Hz)

[b_stop, a_stop] = cheby2(order, rs, fc_stop/(fs/2), 'high'); % Thiết kế bộ lọc triệt dải Chebyshev Type-2

% Tạo biểu đồ đáp ứng biên độ và pha của các bộ lọc
freq = 0:1:fs/2; % Tần số (Hz)
[h_high, w_high] = freqz(b_high, a_high, freq, fs); % Đáp ứng biên độ và pha của bộ lọc thông cao
[h_bandpass, w_bandpass] = freqz(b_bandpass, a_bandpass, freq, fs); % Đáp ứng biên độ và pha của bộ lọc thông dải
[h_stop, w_stop] = freqz(b_stop, a_stop, freq, fs); % Đáp ứng biên độ và pha của bộ lọc triệt dải

% Vẽ biểu đồ
figure;
subplot(2,1,1);
plot(w_high, 20*log10(abs(h_high)), 'r', 'LineWidth', 1.5);
hold on;
plot(w_bandpass, 20*log10(abs(h_bandpass)), 'g', 'LineWidth', 1.5);
plot(w_stop, 20*log10(abs(h_stop)), 'b', 'LineWidth', 1.5);
grid on;
xlabel('Tần số (Hz)');
ylabel('Đáp ứng biên độ (dB)');
title('So sánh đáp ứng biên độ của bộ lọc');
legend('Butterworth (Thông cao)', 'Chebyshev Type-1 (Thông dải)', 'Chebyshev Type-2 (Triệt dải)');

subplot(2,1,2);
plot(w_high, unwrap(angle(h_high)), 'r', 'LineWidth', 1.5);
hold on;
plot(w_bandpass, unwrap(angle(h_bandpass)), 'g', 'LineWidth', 1.5);
plot(w_stop, unwrap(angle(h_stop)), 'b', 'LineWidth', 1.5);
grid on;
xlabel('Tần số (Hz)');
ylabel('Đáp ứng pha (rad)');
title('So sánh đáp ứng pha của bộ lọc');
legend('Butterworth (Thông cao)', 'Chebyshev Type-1 (Thông dải)', 'Chebyshev Type-2 (Triệt dải)');