% Tín hiệu x(n)
n = -9:0;
x = [0, 0, 1/3, 2/3, 1, 1, 1, 1, 0, 0];

% Vẽ biểu đồ
stem(n, x, 'filled', 'MarkerSize', 10, 'LineWidth', 1.5);
xlabel('n','FontWeight','bold','FontSize',14,'Color',[0.15 0.15 0.15]);
ylabel('x(n)','FontWeight','bold','FontSize',14,'Color',[0.15 0.15 0.15]);
title('Phổ tín hiệu x(n)');
grid on;
