
n = -10:100;
x = (1/10).^n .* (n >= 0);
h = (1/5).^n .* (n >= 0);


y = conv(x, h);

if length(n) < length(y)
  n_padded = [n, zeros(1, length(y) - length(n))];
  n = n_padded;
end

% Vẽ đồ thị
plot(n, y, 'b-', 'LineWidth', 2);
grid on;
xlabel('n','FontWeight','bold','FontSize',14);
ylabel('y(n)','FontWeight','bold','FontSize',14);
title('Đáp ứng đầu ra của hệ thống','FontWeight','bold','FontSize',14);