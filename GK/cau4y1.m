% Tính toán và vẽ đáp ứng xung của hệ thống
b = [1, 3, 1, 0, -5]; % Hệ số của y(n)
a = [1, -0.3, 0, 0, 0, 0.2]; % Hệ số của x(n)

% Tính đáp ứng xung
n = -100:100;
h = impz(b, a, n); % Tính đáp ứng xung từ -100 đến 100

% Vẽ đáp ứng xung
stem(n, h, 'linewidth', 2);
xlabel('n','FontWeight','bold','FontSize',14);
ylabel('h(n)','FontWeight','bold','FontSize',14);
title('Đáp ứng xung của hệ thống','FontWeight','bold','FontSize',14);
grid on;


% Vẽ biểu đồ các điểm cực và điểm không của hệ thống
figure;
zplane(b, a);
xlabel('Real Part','FontWeight','bold','FontSize',14);
ylabel('Real Part','FontWeight','bold','FontSize',14);
title('Biểu đồ các điểm cực và điểm không của hệ thống','FontWeight','bold','FontSize',14);
legend('Zeros', 'Poles');
grid on;

