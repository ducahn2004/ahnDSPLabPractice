% Hệ số của đa thức tử số y(z)
b = [16, 12, 2, -4, -1];

% Hệ số của đa thức mẫu số x(z)
a = [1, -3, 11, -27, 18];

% Phân tích hệ thống thành các thành phần đơn giản
[Tuso, Mauso] = cautrucsongsong(a, b);

% In kết quả
disp("Ma trận hệ số của đa thức tử số Tuso:");
disp(Tuso);

disp("Ma trận hệ số của đa thức mẫu số Mauso:");
disp(Mauso);