
close all;

n = 0:20;
x = 2 * (0.9).^n .* (n >= 0); % tín hiệu x(n) = 2*(0.9)^n*u(n)

a = [1, -0.5]; %vector a
b = [1, 2];  %vector b

h = impz(b, a);

y = conv(x,h);%Đáp ứng lối ra y(n)


figure;
hold on;
title('Bai 4 Chuong 4 DSPLab_book')

subplot(2,2,1);
stem(h, 'LineWidth', 2);
xlabel('n');
ylabel('h(n)');
title('Đáp ứng xung của hệ thống');

subplot(2,2,2);
zplane(b, a);
title('Sơ đồ điểm cực và điểm không của hệ thống');

%subplot(2,2,3);
%[H, w]=freqz(b,a);
%freqz(b,a);
%title('Đáp ứng tần số và đáp ứng biên độ');

subplot(2,2,4);
stem(y, 'LineWidth', 2);
xlabel('n');    
ylabel('y(n)');
title('Đáp ứng lối ra của hệ thống với tín hiệu lối vào x(n)');

