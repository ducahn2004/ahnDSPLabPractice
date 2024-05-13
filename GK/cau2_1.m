% Tạo dãy thời gian từ 0 đến 1 giây với bước là 0.001s
t = 0:0.001:1;

% Tính giá trị của tín hiệu x(t)
x = 10 * sin(50*pi*t) .* cos(20*pi*t);

% Vẽ tín hiệu trong miền thời gian
plot(t, x, 'linewidth', 2);
title('Tín hiệu x(t) = 10 sin(50\pi t) cos(20\pi t)','FontWeight','bold','FontSize',14);
xlabel('Thời gian (s)','FontWeight','bold','FontSize',14);
ylabel('Amplitude','FontWeight','bold','FontSize',14);
grid on;
