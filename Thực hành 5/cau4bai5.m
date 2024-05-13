% Hệ số của đa thức tử số y(z)
b = [1, -2, 4, -3];

% Hệ số của đa thức mẫu số x(z)
a = [1, 5, -4, 2];

% Phân tích hệ thống thành các thành phần đơn giản
[Tuso, Mauso] = cautrucsongsong(a, b);

% In kết quả
disp("Ma trận hệ số của đa thức tử số Tuso:");
disp(Tuso);

disp("Ma trận hệ số của đa thức mẫu số Mauso:");
disp(Mauso);