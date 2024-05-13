x = [-1, -2, 3, 4, 2, 9];
h = [1, 3, 2, 1];
y = conv(x,h);

x1 = [1, 2, 3, 4, 5];
h1= [6,7,8,9];
y1 = conv(x1,h1);

n2 = 0:10; 
x2 = (0.8).^n .* (n >= 0); 
h2 = (-0.9).^n .* (n >= 0); 
y2 = conv(x2, h2);

n3 = -5:15;
x3 = ((1/4).^-n3) .* (heaviside(n3 + 1) - heaviside(n3 - 4));
h3 = heaviside(n3) - heaviside(n3 - 5);
y3 = conv(x3,h3);

figure;
title('Đáp ứng lối ra của hệ thống');


subplot(2,2,1);
stem(y, 'LineWidth', 2);
xlabel('Thời gian (n)');
ylabel('Giá trị y(n)');
title('Cau 1');

subplot(2,2,2);
stem(y1, 'LineWidth', 2);
xlabel('Thời gian (n)');
ylabel('Giá trị y(n)');
title('Cau 2');

subplot(2,2,3);
stem(y2, 'LineWidth', 2);
xlabel('Thời gian (n)');
ylabel('Giá trị y(n)');
title('Cau 3');

subplot(2,2,4);
stem(y3, 'LineWidth', 2);
xlabel('Thời gian (n)');
ylabel('Giá trị y(n)');
title('Cau 4');



