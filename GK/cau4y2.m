% Định nghĩa hàm truyền của hệ thống
b = [0.3 0 -0.2 0 0 1 3 1 -5]; % Hệ số của y(n)
a = 1; % Hệ số của x(n)

% Xác định tín hiệu vào
n = 0:99;
x = 5*cos(0.2*pi*n).*sin(0.4*pi*n);

% Tính biến đổi Fourier của tín hiệu vào
X = fft(x);

% Tính đáp ứng của hệ thống
Y = X .* freqz(b, a, 100);

% Tính biến đổi ngược Fourier để có được đáp ứng đầu ra trong miền thời gian
y = ifft(Y);

% Vẽ đồ thị tín hiệu vào và ra
subplot(2,1,1);
stem(n, x, 'linewidth', 2);
xlabel('n','FontWeight','bold','FontSize',14);
ylabel('x(n)','FontWeight','bold','FontSize',14);
title('Tín hiệu vào','FontWeight','bold','FontSize',14);

subplot(2,1,2);
stem(n, y, 'linewidth', 2);
xlabel('n','FontWeight','bold','FontSize',14);
ylabel('y(n)','FontWeight','bold','FontSize',14);
title('Tín hiệu ra','FontWeight','bold','FontSize',14);
