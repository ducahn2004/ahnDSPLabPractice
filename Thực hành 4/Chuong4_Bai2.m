% Bài toán 1
n1 = 5:10;
h1 = [3, 2, 0, -1, 0, 5];

% Bài toán 2
n2 = 0:15;
h2 = 10 * (n2 >= 0) - 5 * (n2 >= 5) - 10 * (n2 >= 10) + 5 * (n2 >= 15);

% Bài toán 3
n3 = -200:200;
h3 = 2 * sin(0.01 * pi * n3) .* cos(0.5 * pi * n3);

% Bài toán 4
n4 = 0:20;
h4 = (1/2).^n4;

% Bài toán 5
n5 = 0:20;
h5 = 3.^n5;

% Vẽ đồ thị
subplot(3, 2, 1);
stem(n1, h1);
xlabel('Thời gian (n)');
ylabel('h(n)');
title('Hệ thống 1');

subplot(3, 2, 2);
stem(n2, h2);
xlabel('Thời gian (n)');
ylabel('h(n)');
title('Hệ thống 2');

subplot(3, 2, 3);
stem(n3, h3);
xlabel('Thời gian (n)');
ylabel('h(n)');
title('Hệ thống 3');

subplot(3, 2, 4);
stem(n4, h4);
xlabel('Thời gian (n)');
ylabel('h(n)');
title('Hệ thống 4');

subplot(3, 2, 5);
stem(n5, h5);
xlabel('Thời gian (n)');
ylabel('h(n)');
title('Hệ thống 5');
