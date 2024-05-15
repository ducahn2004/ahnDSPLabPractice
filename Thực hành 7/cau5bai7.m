% Thiết kế và vẽ bộ lọc cho yêu cầu thứ nhất
wp1 = 0.3*pi; % Tần số cắt (radians) trong dải chuyển mạch
ws1 = 0.6*pi; % Tần số cắt (radians) trong dải dừng mạch
Ap1 = 0.5; % Yêu cầu giảm dạng sóng (dB) trong dải chuyển mạch
As1 = 45; % Yêu cầu giảm dạng sóng (dB) trong dải dừng mạch

h1 = FIRwindow(wp1, As1);

figure;
subplot(2, 1, 1);
stem(h1);
title('h(n)');
xlabel('n');
ylabel('h(n)');
subplot(2, 1, 2);
freqz(h1);
title('|H(w)|');

% Thiết kế và vẽ bộ lọc cho yêu cầu thứ hai
wp2 = 0.2*pi; % Tần số cắt (radians) trong dải chuyển mạch
ws2 = 0.75*pi; % Tần số cắt (radians) trong dải dừng mạch
Ap2 = 0.2; % Yêu cầu giảm dạng sóng (dB) trong dải chuyển mạch
As2 = 50; % Yêu cầu giảm dạng sóng (dB) trong dải dừng mạch

h2 = FIRwindow(wp2, As2);

figure;
subplot(2, 1, 1);
stem(h2);
title('h(n)');
xlabel('n');
ylabel('h(n)');

subplot(2, 1, 2);
freqz(h2);
title('|H(w)|');

% Thiết kế và vẽ bộ lọc cho yêu cầu thứ ba
wp3 = 0.4*pi; % Tần số cắt (radians) trong dải chuyển mạch
ws3 = 0.6*pi; % Tần số cắt (radians) trong dải dừng mạch
Ap3 = 0.25; % Yêu cầu giảm dạng sóng (dB) trong dải chuyển mạch
As3 = 60; % Yêu cầu giảm dạng sóng (dB) trong dải dừng mạch

h3 = FIRwindow(wp3, As3);

figure;
subplot(2, 1, 1);
stem(h3);
title('h(n)');
xlabel('n');
ylabel('h(n)');

subplot(2, 1, 2);
freqz(h3);
title('|H(w)|');