% Bài toán 1
x1 = [-1, -2, 3, 4, 2, 9];
h1 = [1, 3, 2, 1];
y1 = conv(x1, h1);

% Bài toán 2
x2 = [1, 2, 3, 4, 5];
h2 = [6, 7, 8, 9];
y2 = conv(x2, h2);

% Bài toán 3
n3 = 0:20;
x3 = (0.8).^n3 .* (n3 >= 0);
h3 = (-0.9).^n3 .* (n3 >= 0);
y3 = conv(x3, h3);

% Bài toán 4
n4 = 0:20;
x4 = (1/4).^(-n4) .* ((n4 >= -1) - (n4 >= 4));
h4 = (n4 >= 0) - (n4 >= 5);
y4 = conv(x4, h4);

% Vẽ đồ thị
subplot(2, 2, 1);
stem(y1);
xlabel('Thời gian');
ylabel('y(n)');
title('Bài toán 1');

subplot(2, 2, 2);
stem(y2);
xlabel('Thời gian');
ylabel('y(n)');
title('Bài toán 2');

subplot(2, 2, 3);
stem(y3);
xlabel('Thời gian');
ylabel('y(n)');
title('Bài toán 3');

subplot(2, 2, 4);
stem(y4);
xlabel('Thời gian');
ylabel('y(n)');
title('Bài toán 4');
