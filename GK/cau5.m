% Tạo thời gian liên tục từ 0 đến 10 giây với bước là 1/500
t = 0:1/500:10;

% Tín hiệu liên tục x(t)
x = cos(30*pi*t) + 0.4*sin(50*pi*t);

% Tín hiệu rời rạc x(n) sau khi lấy mẫu với tần số lấy mẫu Fs = 500 Hz trong 10 giây
Fs = 500; % Tần số lấy mẫu
n = 0:10*Fs; % Thời gian rời rạc
xn = cos(30*pi*n/Fs) + 0.4*sin(50*pi*n/Fs); % Tín hiệu rời rạc

% Tạo subplot
figure;

% Subplot 1: Vẽ tín hiệu rời rạc x(n)
subplot(2, 3, 1);
stem(n, xn);
title('Tín hiệu rời rạc x(n)','FontWeight','bold','FontSize',14);
xlabel('n','FontWeight','bold','FontSize',14);
ylabel('Amplitude','FontWeight','bold','FontSize',14);
grid on;


% Subplot 2: Vẽ phổ biên độ tần số của tín hiệu sau khi lấy mẫu
subplot(2, 3, 2);
N = length(xn);
X = fft(xn);
f = (0:N-1)*(Fs/N);
stem(f, abs(X), 'linewidth', 2);
title('Phổ biên độ tần số của x(n)','FontWeight','bold','FontSize',14);
xlabel('Frequency (Hz)','FontWeight','bold','FontSize',14);
ylabel('Amplitude','FontWeight','bold','FontSize',14);
grid on;


% Subplot 3: Vẽ đáp ứng xung của hệ thống
subplot(2, 3, 3);
a = [1 0];
b = [1 -0.3];
impulse_response = filter(b, a, xn);
stem(0:length(impulse_response)-1, impulse_response, 'linewidth', 2);
title('Đáp ứng xung của hệ thống','FontWeight','bold','FontSize',14);
xlabel('n','FontWeight','bold','FontSize',14);
ylabel('Amplitude','FontWeight','bold','FontSize',14);
grid on;


% Subplot 4: Vẽ đáp ứng tần số biên độ của hệ thống
subplot(2, 3, 4);
[h, w] = freqz(b, a, 'whole');
plot(w/pi, abs(h), 'linewidth', 2);
title('Đáp ứng tần số biên độ của hệ thống','FontWeight','bold','FontSize',14);
xlabel('Normalized frequency (\times\pi rad/sample)','FontWeight','bold','FontSize',14);
ylabel('Magnitude','FontWeight','bold','FontSize',14);
grid on;


% Subplot 5: Vẽ đáp ứng đầu ra của hệ thống với đầu vào là x(n)
subplot(2, 3, 5);
output_signal = filter(b, a, xn);
stem(n, output_signal, 'linewidth', 2);
title('Đáp ứng đầu ra của hệ thống với đầu vào là x(n)','FontWeight','bold','FontSize',14);
xlabel('n','FontWeight','bold','FontSize',14);
ylabel('Amplitude','FontWeight','bold','FontSize',14);
grid on;

% Subplot 6: Vẽ phổ biên độ của đáp ứng đầu ra của hệ thống với đầu vào là x(n)
subplot(2, 3, 6);
Output_X = fft(output_signal);
stem(f, abs(Output_X), 'linewidth', 2);
title('Phổ biên độ của đáp ứng đầu ra của hệ thống','FontWeight','bold','FontSize',14);
xlabel('Frequency (Hz)','FontWeight','bold','FontSize',14);
ylabel('Amplitude','FontWeight','bold','FontSize',14);
grid on;