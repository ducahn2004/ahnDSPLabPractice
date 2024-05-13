% Hệ số của đa thức tử số y(z)
b = [16, 12, 2, -4, -1];

% Hệ số của đa thức mẫu số x(z)
a = [1, -3, 11, -27, 18];

% Phân tích đa thức thành tích các đa thức bậc 2
[b0, B, A] = Cautrucnoitiep(b, a);

% In kết quả
disp("Hệ số khuếch đại b0: ");
disp(b0);

disp("Ma trận hệ số tử số B: ");
disp(B);

disp("Ma trận hệ số mẫu số A: ");
disp(A);